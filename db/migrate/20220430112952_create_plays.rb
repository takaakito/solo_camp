class CreatePlays < ActiveRecord::Migration[6.1]
  def change
    create_table :plays do |t|
      t.string :camp_play
      t.text :play_introduction
      t.integer :user_id
      t.timestamps
    end
  end
end
