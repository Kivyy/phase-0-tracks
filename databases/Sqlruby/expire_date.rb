require'sqlite3'

datab = SQLite3::Database.new("expiredate.db")
datab.results_as_hash = true 

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS items(
	id INTEGER PRIMARY KEY,
	item_name VARCHAR(255),
	purchase_date date,
	expired_date date
	)
SQL

datab.execute(create_table_cmd)

#method 1: to check the whole list for the user
whole_list = datab.execute("SELECT * FROM items")
current_date = datab.execute("SELECT strftime('%m-%d-%Y','now')")
item_only = datab.execute("SELECT item_name FROM items")

def list_data(whole_list,current_date)
	current_date.each do |date|
	whole_list.each do |items|
		puts "Item: #{items['item_name']} | Purchased on: #{items['purchase_date']}"
		puts "This item will be expired on: #{items['expired_date']}"
		puts "Today date is #{date[0]}"
		puts "------------------------------------------------------------------------------"
	end 
	end
end 

#method 2: allow user to add the list.

def add_list(datab,i_name,i_p_date,i_e_date)
	datab.execute("INSERT INTO items (item_name,purchase_date,expired_date) VALUES (?,?,?)",[i_name,i_p_date,i_e_date])
end 

#method 3: allow user to update the list. 
def update_list(datab,up_name,up_p_date,up_e_date)
	datab.execute("UPDATE items SET purchase_date = (?),expired_date = (?) WHERE item_name = (?)",[up_p_date,up_e_date,up_name])
end 

#method 4: to delete item off the list.
def delete_list(datab,delete_item)
	datab.execute("DELETE FROM items WHERE item_name = (?)",[delete_item])
end 

#method 5 
def display_item(item_only)
	item_only.each do |item_name|
		puts "Item: #{item_name[0]}"
	end 
end 

#UI
puts "Welcome back to CheckYoStuff!"
puts "-----------------------------"
puts "[1]to see your list,[2]to add new item,[3]to update the items,[4] to delete ite off the list, [5] to quit the program."
initial_respond = gets.chomp.to_i 

case initial_respond 
when 1 
	list_data(whole_list,current_date)
when 2 
	puts "Please provide us name of the item you would like to add." 
	i_name = gets.chomp 
	puts "Please provide us with the purchased date.(mm-dd-yyyy)"
	i_p_date = gets.chomp
	puts "Please provide us with the expired date.(mm-dd-yyyy)"
	i_e_date = gets.chomp
	add_list(datab,i_name,i_p_date,i_e_date)
	list_data(whole_list,current_date)
when 3 
	puts "Please provide us with the name of the item you want to update."
	up_name = gets.chomp 
	puts "Please provide us with the new purchase date."
	up_p_date = gets.chomp 
	puts "Please provide us with the new expired date."
	up_e_date = gets.chomp 
	update_list(datab,up_name,up_p_date,up_e_date)
	list_data(whole_list,current_date)
when 4 
	puts "Which item do you wish to delete?"
	display_item(item_only)
	delete_item = gets.chomp 
	delete_list(datab,delete_item)
when 5
	puts "thank you for using the program!"
end 