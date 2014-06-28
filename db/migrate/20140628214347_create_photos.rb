class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :review_id
      t.integer :student_id
      t.integer :dining_hall_id
      t.string :url

      t.timestamps
    end
  end
end
