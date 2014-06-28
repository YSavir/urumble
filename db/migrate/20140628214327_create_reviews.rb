class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :student_id
      t.integer :dining_hall_id
      t.integer :rating
      t.string :comment

      t.timestamps
    end
  end
end
