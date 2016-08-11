class RenameFieldsInParts < ActiveRecord::Migration
  def change
    remove_column :parts, :component_id
    rename_column :part_parameters, :design_part_id, :part_id
  end
end
