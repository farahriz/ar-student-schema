class Student < ActiveRecord::Base
# implement your Student model here
	validates :email, format: {with: /@.+\...+/}
	validates :email, uniqueness: true
	validates :age, numericality: {greater_than: 5}
	validates :phone, length: {minimum: 10}

	def name
		p "#{self.first_name} #{self.last_name}"
	end

	def age
		cur_age = ((Date.today-self.birthday)/365.25)
		current_age = cur_age.to_i
		p current_age
	end
end