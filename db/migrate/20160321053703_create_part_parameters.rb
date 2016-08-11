class CreatePartParameters < ActiveRecord::Migration
  def change
    create_table "part_parameters", force: :cascade do |t|
      t.integer  "part_id"
      t.string   "value_type"
      t.string   "unit_type"
      t.string   "param_value"
      t.datetime "created_at",  null: false
      t.datetime "updated_at",  null: false
    end
  end
end
