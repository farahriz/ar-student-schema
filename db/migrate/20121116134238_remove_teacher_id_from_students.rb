require_relative '../config'

# this is where you should use an ActiveRecord migration to add a column, teacher_id to student, which is a foreign key that related back to teacher_id

class RemoveTeacherIdFromStudents < ActiveRecord::Migration[5.0]
  def change
  	remove_column :students, :teacher_id
  end
end
