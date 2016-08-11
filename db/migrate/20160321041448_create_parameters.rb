class CreateParameters < ActiveRecord::Migration
  def change
    create_table "parameters", force: :cascade do |t|
      t.string   "name"
      t.integer  "component_id"
      t.datetime "created_at",   null: false
      t.datetime "updated_at",   null: false
      t.string   "value_type"
      t.string   "unit_type"
      t.string   "param_value"
      end
  end
end
