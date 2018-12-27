require 'active_record'
require_relative '../app/models/student.rb'
require_relative '../app/models/subject.rb'
require_relative '../app/models/teacher.rb'

ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => "#{File.dirname(__FILE__)}/../db/ar-students.sqlite3")

Student.create(first_name: "Jake", last_name: "Jacobs", gender: "Male", birthday: "01-02-1990", email: "jake@jakey.c" , phone: "0128241513")
Student.create(first_name: "Harry", last_name: "Potter", gender: "Male", birthday: "31-07-1989", email: "harryjpotter@hogwarts.edu" , phone: "+44 123 1515 123")

