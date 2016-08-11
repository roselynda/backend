class CreatePortInComponents < ActiveRecord::Migration
  def change
    create_table "port_in_components", force: :cascade do |t|
      t.integer  "port_id"
      t.integer  "component_id"
      t.datetime "created_at",   null: false
      t.datetime "updated_at",   null: false
    end
  end
end
