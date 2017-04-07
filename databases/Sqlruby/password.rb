
require 'sqlite3'
# require_relative 'password_reminder'

datab = SQLite3::Database.new("password_reminder.db")

create_password_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS passwords(
		id INTEGER PRIMARY KEY,
		program_name VARCHAR(255),
		password VARCHAR(255)
	)
SQL

create_user_cmd = <<-SQL 
	CREATE TABLE IF NOT EXISTS users(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		password VARCHAR(255)
	)
SQL

datab.execute(create_password_cmd)
datab.execute(create_user_cmd)

#create a method that create a new account for the user.
# def new_account
# 	puts "Hello first time user! Please kindly provide us with an user id"
# 	user_id = gets.chomp 
# 	puts "Please provide us with a password for this account."
# 	user_password = gets.chomp 
# 	puts "Thank you. Your account has been activated"
# 	datab.execute()
# end 
