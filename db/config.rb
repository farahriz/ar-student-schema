require 'active_record'
require_relative '../app/models/student.rb'
require_relative '../app/models/subject.rb'
require_relative '../app/models/teacher.rb'

ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => "#{File.dirname(__FILE__)}/../db/ar-students.sqlite3")

def seed_teachers
	# Student.create(first_name: "Jake", last_name: "Jacobs", gender: "Male", birthday: "01-02-1990", email: "jake@jakey.c" , phone: "0128241513")
	# Student.create(first_name: "Harry", last_name: "Potter", gender: "Male", birthday: "31-07-1989", email: "harryjpotter@hogwarts.edu" , phone: "+44 123 1515 123")''
	Teacher.create(first_name: "Glynda", last_name: "Goodwitch", email: "ggoogwitch@beacon.edu", phone: "555 465 7891")
	Teacher.create(first_name: "Tobin", last_name: "Waynwood", email: "twaynwood@beacon.edu", phone: "555 495 7892")
	Teacher.create(first_name: "Qrow", last_name: "Branwen", email: "qbranwen@beacon.edu", phone: "555 465 7251")
	Teacher.create(first_name: "James", last_name: "Ironwood", email: "jamesironwood@atlas.edu", phone: "555 465 8523")
	Teacher.create(first_name: "Nozpin", last_name: "Ozpin", email: "thebiggood@beacon.edu", phone: "555 465 6431")
	Teacher.create(first_name: "Summer", last_name: "Rose", email: "ggoogwitch@haven.edu", phone: "555 465 0683")
	Teacher.create(first_name: "Raven", last_name: "Branwen", email: "ravenbranwen@shade.edu", phone: "555 465 6812")
	Teacher.create(first_name: "Serin", last_name: "Kahtai", email: "skahtai@haven.edu", phone: "555 465 6183")
	Teacher.create(first_name: "Taiyang", last_name: "Xiao Long", email: "taiyangxl@signal.edu", phone: "555 465 0023")
end

# seed_teachers