class Teacher < ActiveRecord::Base
	validates :email, uniqueness: true
	
	has_many :student_teachers
	has_many :students, through: :student_teachers

	def name
		p "#{self.first_name} #{self.last_name}"
	end
end