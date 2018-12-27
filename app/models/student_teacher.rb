class StudentTeacher < ActiveRecord::Base
# implement your StudentTeacher model here
	belongs_to :student
	belongs_to :teacher

end