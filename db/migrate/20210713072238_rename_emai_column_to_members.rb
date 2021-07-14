class RenameEmaiColumnToMembers < ActiveRecord::Migration[5.2]
  def change
    rename_column :members, :emai, :email
  end
end
