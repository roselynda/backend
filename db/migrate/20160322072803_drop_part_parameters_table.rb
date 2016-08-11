class DropPartParametersTable < ActiveRecord::Migration
  def change
    drop_table :part_parameters
  end
end
