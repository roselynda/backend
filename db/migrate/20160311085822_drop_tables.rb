class DropTables < ActiveRecord::Migration
  def change
    drop_table :design_part_parameters
    drop_table :design_parts
    drop_table :designs
  end
end
