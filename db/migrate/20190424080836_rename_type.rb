class RenameType < ActiveRecord::Migration[5.2]
  def change
    rename_column :votes, :type, :now_old
  end
end
