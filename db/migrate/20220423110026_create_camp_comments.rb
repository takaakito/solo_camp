class CreateCampComments < ActiveRecord::Migration[6.1]
  def change
    create_table :camp_comments do |t|
      t.string :camp_comment
      t.integer :user_id
      t.integer :camp_id
      t.timestamps
    end
  end
end
