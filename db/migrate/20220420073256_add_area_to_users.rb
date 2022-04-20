class AddAreaToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :area, :integer, default: 0, null: false
  end
end
