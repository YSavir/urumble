class CreateDiningHalls < ActiveRecord::Migration
  def change
    create_table :dining_halls do |t|
      t.integer :school_id
      t.string :name

      t.timestamps
    end
  end
end
