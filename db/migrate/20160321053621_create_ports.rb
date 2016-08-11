class CreatePorts < ActiveRecord::Migration
  def change
    create_table "ports", force: :cascade do |t|
      t.string   "name"
      t.string   "port_type"
      t.string   "signal_type"
      t.datetime "created_at",  null: false
      t.datetime "updated_at",  null: false
    end
  end
end
