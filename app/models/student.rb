class Student < ActiveRecord::Base
# implement your Student model here
	def name
		p "#{self.first_name} #{self.last_name}"
	end

	def age
		current_age = ((Date.today - self.birthday)/365.25).to_i
		p current_age
	end
end