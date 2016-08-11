class RemoveFieldsFromDesignPart < ActiveRecord::Migration
  def change
    remove_column :design_parts, :connected_component
    add_column :design_parts, :input_part_id, :integer
    add_column :design_parts, :output_part_id, :integer
  end
end
