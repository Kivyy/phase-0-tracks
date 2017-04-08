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

def list_data(whole_list,current_date)
	current_date.each do |date|
	whole_list.each do |items|
		puts "item: #{items['item_name']} | purchased on: #{items['purchase_date']}"
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

#method 2: allow user to update the list. 




#UI
puts "Welcome back to CheckYoStuff!"
puts "-----------------------------"
puts "[1]to see your list,[2]to update the items,[3]to add new item [4] to quit the program."
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
end 