# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/students/info' do
	erb :student_info
end 


get '/student' do 
	student = db.execute("SELECT * FROM students WHERE name=? AND id=?",[params['name'],params['id'].to_i])
	response = ""
	student.each do |i|
		response << "Name: #{student['name']}<br>"
		response << "Age: #{student['age']}<br>"
		response << "Campus: #{student['campus']}<br>"
	end 
	response
end 

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end


# add static resources