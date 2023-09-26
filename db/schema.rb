# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_26_114737) do
  create_table "articles", force: :cascade do |t|
    t.string "title", default: "", null: false
    t.datetime "start_datetime", null: false
    t.datetime "end_datetime", null: false
    t.text "body", default: "", null: false
    t.string "article_images", default: ""
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.integer "type", null: false
    t.text "message", default: "", null: false
    t.string "name", default: "", null: false
    t.string "name_kana", default: "", null: false
    t.string "email", default: "", null: false
    t.string "phone_number", default: "", null: false
    t.boolean "callback_requested", null: false
    t.integer "contact_method", null: false
    t.integer "status", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_contacts_on_user_id"
  end

  create_table "news", force: :cascade do |t|
    t.date "calendar_date", null: false
    t.string "title", default: "", null: false
    t.datetime "start_datetime", null: false
    t.datetime "end_datetime", null: false
    t.text "body", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_news_on_user_id"
  end

  create_table "reqruits", force: :cascade do |t|
    t.integer "recruit_type", null: false
    t.string "name", default: "", null: false
    t.string "name_kana", default: "", null: false
    t.string "phone_number", default: "", null: false
    t.string "email", default: "", null: false
    t.date "birth_date", null: false
    t.integer "sex", null: false
    t.integer "preferecture", null: false
    t.string "city", default: "", null: false
    t.string "street", default: "", null: false
    t.integer "status", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_reqruits_on_user_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "address", default: "", null: false
    t.text "access", default: "", null: false
    t.text "business_time", default: "", null: false
    t.string "phone_number", default: "", null: false
    t.integer "counter_seats", null: false
    t.integer "table_seats", null: false
    t.string "site_name", default: "", null: false
    t.text "gourmet_site_link", default: "", null: false
    t.string "shop_images", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_shops_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "phone_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "articles", "users"
  add_foreign_key "contacts", "users"
  add_foreign_key "news", "users"
  add_foreign_key "reqruits", "users"
  add_foreign_key "shops", "users"
end
