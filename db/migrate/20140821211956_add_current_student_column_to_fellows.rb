class AddCurrentStudentColumnToFellows < ActiveRecord::Migration
  def change
  	add_column :fellows, :current_student, :boolean
  end
end
