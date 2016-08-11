class RenameFieldInComponentGroups < ActiveRecord::Migration
  def change
    rename_column :component_groups, :group_name, :name
  end
end
