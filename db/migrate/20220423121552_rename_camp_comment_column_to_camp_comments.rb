class RenameCampCommentColumnToCampComments < ActiveRecord::Migration[6.1]
  def change
    rename_column :camp_comments, :camp_comment, :comment
  end
end
