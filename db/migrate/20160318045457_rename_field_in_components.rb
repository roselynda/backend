class RenameFieldInComponents < ActiveRecord::Migration
  def change
    rename_column :components, :group_id, :component_group_id
  end
end
