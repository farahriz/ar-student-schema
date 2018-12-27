class Teacher < ActiveRecord::Base
	validates :email, uniqueness: true

	def name
		p "#{self.first_name} #{self.last_name}"
	end
end