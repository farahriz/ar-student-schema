class Teacher < ActiveRecord::Base
	validates :email, uniqueness: true
	has_and_belongs_to_many :students, join_table: "student_teachers"

	def name
		p "#{self.first_name} #{self.last_name}"
	end
end