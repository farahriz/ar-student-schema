require 'active_record'
require_relative '../app/models/student.rb'
require_relative '../app/models/subject.rb'
require_relative '../app/models/teacher.rb'
require_relative '../app/models/student_teacher.rb'

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

def seed_students
	Student.create(first_name: "Ruby", last_name: "Rose", gender: "Female", birthday: "06-06-2003", email: "40rrose@beacon.edu", phone: "556 123 1234")
	Student.create(first_name: "Yang", last_name: "Xiao Long", gender: "Female", birthday: "06-12-2001", email: "40yxl@beacon.edu", phone: "556 123 1235")
	Student.create(first_name: "Blake", last_name: "Belladonna", gender: "Female", birthday: "19-10-2001", email: "40bbelladonna@beacon.edu", phone: "556 123 1236")
	Student.create(first_name: "Weiss", last_name: "Schnee", gender: "Female", birthday: "12-01-2002", email: "40wschnee@beacon.edu", phone: "556 123 1237")
	Student.create(first_name: "Jaune", last_name: "de Arc", gender: "Male", birthday: "15-09-2000", email: "40jaunearc@beacon.edu", phone: "556 123 1238")
	Student.create(first_name: "Pyhrra", last_name: "Nikos", gender: "Female", birthday: "17-08-2001", email: "40pnikos@beacon.edu", phone: "556 123 1239")
	Student.create(first_name: "Lie", last_name: "Ren", gender: "Male", birthday: "23-11-2000", email: "40lren@beacon.edu", phone: "556 123 1240")
	Student.create(first_name: "Nora", last_name: "Valkyrie", gender: "Female", birthday: "17-02-2000", email: "40norav@beacon.edu", phone: "556 123 1241")
end

# seed_students

# Assigns teachers to students in 1-to-many relationship
	# def assign_teachers_to_students
	# 	all_students = Student.all 

	# 	all_students.each do |current_student|
	# 		current_student.update(teacher_id: rand(1..9))
	# 	end
	# end


# Assigns a teacher to teacher to each student randomly for many-to-many relationship
	def create_student_teacher_relationships
		all_teachers = Teacher.all

		for i in 1..62
			StudentTeacher.create(student_id: i, teacher_id: all_teachers.sample.id)
		end 
		# StudentTeacher.create(student_id: 1, teacher_id: 1)
	end

