class RenameFieldInComponent < ActiveRecord::Migration
  def change
    drop_table :global_values
    drop_table :parameters
    drop_table :part_parameters
    drop_table :parts
    drop_table :port_in_components
    drop_table :ports
    
    rename_column :components, :group, :group_id
  end
end
