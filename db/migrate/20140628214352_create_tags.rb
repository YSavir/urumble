class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :student_id
      t.integer :dining_hall_id
      t.references :taggable, polymorphic: true
      t.string :name

      t.timestamps
    end
  end
end
