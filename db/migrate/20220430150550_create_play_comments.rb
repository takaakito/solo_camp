class CreatePlayComments < ActiveRecord::Migration[6.1]
  def change
    create_table :play_comments do |t|
      t.text :comment
      t.integer :user_id
      t.integer :play_id
      t.timestamps
    end
  end
end
