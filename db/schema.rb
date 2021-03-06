# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_27_134736) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.bigint "type_id", null: false
    t.bigint "cleaning_id", null: false
    t.boolean "isActive", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cleaning_id"], name: "index_assignments_on_cleaning_id"
    t.index ["type_id"], name: "index_assignments_on_type_id"
  end

  create_table "cleanings", force: :cascade do |t|
    t.string "duty"
    t.boolean "pass"
    t.boolean "isActive", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.boolean "isActive", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "type_id", null: false
    t.bigint "room_id", null: false
    t.datetime "dated"
    t.boolean "original"
    t.boolean "isActive", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["room_id"], name: "index_schedules_on_room_id"
    t.index ["type_id"], name: "index_schedules_on_type_id"
    t.index ["user_id"], name: "index_schedules_on_user_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.boolean "isActive", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.boolean "isActive", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "assignments", "cleanings"
  add_foreign_key "assignments", "types"
  add_foreign_key "schedules", "rooms"
  add_foreign_key "schedules", "types"
  add_foreign_key "schedules", "users"
end
