class CreatePlayFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :play_favorites do |t|
      t.integer :user_id
      t.integer :play_id

      t.timestamps
    end
  end
end
