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

ActiveRecord::Schema.define(version: 20180319213539) do

  create_table "entries", force: :cascade do |t|
    t.string "title"
    t.integer "probability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active"
    t.integer "user_id"
    t.integer "roulette_wheel_id"
    t.string "sound_file_name"
    t.string "sound_content_type"
    t.integer "sound_file_size"
    t.datetime "sound_updated_at"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["roulette_wheel_id"], name: "index_entries_on_roulette_wheel_id"
    t.index ["user_id"], name: "index_entries_on_user_id"
  end

  create_table "roulette_wheels", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "width"
    t.integer "height"
    t.integer "speed"
    t.integer "duration"
    t.string "spinning_sound_file_name"
    t.string "spinning_sound_content_type"
    t.integer "spinning_sound_file_size"
    t.datetime "spinning_sound_updated_at"
    t.index ["user_id"], name: "index_roulette_wheels_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.string "token"
    t.string "image_url"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
