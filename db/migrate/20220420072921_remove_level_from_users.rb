class RemoveLevelFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :level, :string
  end
end
