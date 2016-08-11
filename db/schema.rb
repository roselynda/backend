# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160408030545) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "component_groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "components", force: :cascade do |t|
    t.text     "properties"
    t.integer  "component_group_id"
    t.string   "name"
    t.string   "description"
    t.string   "picture"
    t.datetime "image_updated_at"
    t.integer  "image_file_size"
    t.string   "image_content_type"
    t.string   "image_file_name"
  end

  create_table "contributors", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "design_id"
    t.boolean  "is_owner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "designs", force: :cascade do |t|
    t.string   "name"
    t.text     "json"
    t.integer  "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parameters", force: :cascade do |t|
    t.string   "name"
    t.integer  "component_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "value_type"
    t.string   "unit_type"
    t.string   "param_value"
  end

  create_table "port_in_components", force: :cascade do |t|
    t.integer  "port_id"
    t.integer  "component_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "ports", force: :cascade do |t|
    t.string   "name"
    t.string   "port_type"
    t.string   "signal_type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "runs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string  "email"
    t.string  "crypted_password"
    t.string  "salt"
    t.string  "organization_name"
    t.boolean "is_student"
    t.string  "name"
    t.string  "plan_name"
    t.string  "picture"
  end

end
