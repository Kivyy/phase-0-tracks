
require 'faker'
require 'sqlite3'

datab = SQLite3::Database.new("password_reminder.db")

create_password_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS passwords(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		password VARCHAR(255)
	)
SQL

datab.execute(create_password_cmd)
