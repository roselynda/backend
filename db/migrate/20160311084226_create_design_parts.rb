class CreateDesignParts < ActiveRecord::Migration
  def change
    create_table :design_parts do |t|
      t.integer :component_id
      t.integer :design_id
      t.timestamps null: false
    end
  end
end
