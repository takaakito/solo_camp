class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :camp_food
      t.integer :food_level, null: false, default: 0
      t.integer :food_time, null: false, default: 0
      t.text :food_introduction
      t.timestamps
    end
  end
end
