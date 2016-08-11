class AddFieldsToDesignPart < ActiveRecord::Migration
  def change
    add_column :design_parts, :x, :float
    add_column :design_parts, :y, :float
    add_column :design_parts, :connected_component, :string
  end
end
