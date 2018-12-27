require_relative '../config'

# this is where you should use an ActiveRecord migration to add a column, teacher_id to student, which is a foreign key that related back to teacher_id

class AddColumnTeacherToStudent < ActiveRecord::Migration[5.0]
  def change
    add_reference :students, :teacher, foreign_key: true
  end
end
