class CreateDesignPartParameters < ActiveRecord::Migration
  def change
    create_table :design_part_parameters do |t|
      t.integer :design_part_id
      t.string :value_type
      t.string :unit_type
      t.string :param_value

      t.timestamps null: false
    end
  end
end
