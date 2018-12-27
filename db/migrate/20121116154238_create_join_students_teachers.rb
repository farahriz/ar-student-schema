require_relative '../config'

# this is where you should use an ActiveRecord migration to add a column, teacher_id to student, which is a foreign key that related back to teacher_id

class CreateJoinStudentsTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :student_teachers do |t|
    	t.integer :student_id
    	t.integer :teacher_id
    end
  end
end
