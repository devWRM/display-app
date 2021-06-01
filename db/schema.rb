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

ActiveRecord::Schema.define(version: 2021_06_01_032135) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cleanings", force: :cascade do |t|
    t.string "action"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "cleaning_id", null: false
    t.datetime "dated"
    t.boolean "original"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "room_id", null: false
    t.index ["cleaning_id"], name: "index_schedules_on_cleaning_id"
    t.index ["room_id"], name: "index_schedules_on_room_id"
    t.index ["user_id"], name: "index_schedules_on_user_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "status_id", null: false
    t.index ["status_id"], name: "index_users_on_status_id"
  end

  add_foreign_key "schedules", "cleanings"
  add_foreign_key "schedules", "rooms"
  add_foreign_key "schedules", "users"
  add_foreign_key "users", "statuses"
end
