class CreateStudentDiets < ActiveRecord::Migration
  def change
    create_table :student_diets do |t|
      t.integer :student_id
      t.integer :diet_id

      t.timestamps
    end
  end
end
