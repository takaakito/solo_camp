class CreateCamps < ActiveRecord::Migration[6.1]
  def change
    create_table :camps do |t|
      t.string :name
      t.integer :camp_area, null: false, default: 0
      t.integer :category, null: false, default: 0
      t.string :body
      t.timestamps
    end
  end
end
