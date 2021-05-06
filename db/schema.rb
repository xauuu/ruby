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

ActiveRecord::Schema.define(version: 2021_05_06_133221) do

  create_table "blog_categories", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "blogs", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "blog_category_id", null: false
    t.string "title"
    t.string "img"
    t.string "date"
    t.text "desc"
    t.integer "view", default: 1
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["blog_category_id"], name: "index_blogs_on_blog_category_id"
  end

  create_table "categories", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "galleries", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "tour_id", null: false
    t.string "img"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tour_id"], name: "index_galleries_on_tour_id"
  end

  create_table "orders", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "tour_id", null: false
    t.string "name"
    t.string "phone"
    t.string "address"
    t.string "email"
    t.string "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tour_id"], name: "index_orders_on_tour_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "tours", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "img"
    t.text "desc"
    t.integer "price"
    t.integer "rating"
    t.integer "day"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "category_id"
    t.index ["category_id"], name: "index_tours_on_category_id"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
  end

  add_foreign_key "blogs", "blog_categories"
  add_foreign_key "galleries", "tours"
  add_foreign_key "orders", "tours"
  add_foreign_key "orders", "users"
  add_foreign_key "tours", "categories"
end
