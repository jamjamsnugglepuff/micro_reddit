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

ActiveRecord::Schema.define(version: 2020_10_02_113254) do

  create_table "admins", force: :cascade do |t|
    t.integer "form_id"
    t.integer "user_id"
    t.integer "admin_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_id", "user_id"], name: "index_admins_on_form_id_and_user_id", unique: true
    t.index ["form_id"], name: "index_admins_on_form_id"
    t.index ["id"], name: "index_admins_on_id", unique: true
    t.index ["user_id"], name: "index_admins_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "score", default: 0
    t.integer "user_id"
    t.text "text"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_comments_on_id", unique: true
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "forms", force: :cascade do |t|
    t.text "description"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_forms_on_id", unique: true
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.integer "user_id"
    t.integer "score", default: 0
    t.text "body"
    t.integer "form"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_posts_on_id", unique: true
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "rating", default: 0
    t.string "user_name"
    t.string "password"
    t.string "email_address"
    t.string "address"
    t.string "city"
    t.string "country"
    t.string "first_name"
    t.string "last_name"
    t.string "about"
    t.date "date_of_birth"
    t.integer "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_users_on_id", unique: true
  end

end
