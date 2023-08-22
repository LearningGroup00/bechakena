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

ActiveRecord::Schema[7.0].define(version: 2023_08_21_132414) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "men_fashions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pants", force: :cascade do |t|
    t.string "brand"
    t.decimal "price"
    t.string "size"
    t.string "color"
    t.string "Type"
    t.text "description"
    t.bigint "men_fashion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["men_fashion_id"], name: "index_pants_on_men_fashion_id"
  end

  create_table "products", force: :cascade do |t|
    t.bigint "category_id", null: false
    t.text "description"
    t.decimal "price"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "punjabis", force: :cascade do |t|
    t.string "brand"
    t.decimal "price"
    t.string "size"
    t.string "color"
    t.text "description"
    t.bigint "men_fashion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["men_fashion_id"], name: "index_punjabis_on_men_fashion_id"
  end

  create_table "sarees", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.decimal "price"
    t.string "size"
    t.string "color"
    t.text "description"
    t.bigint "women_fashion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["women_fashion_id"], name: "index_sarees_on_women_fashion_id"
  end

  create_table "shirts", force: :cascade do |t|
    t.string "brand"
    t.decimal "price"
    t.string "size"
    t.string "color"
    t.text "description"
    t.bigint "men_fashion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["men_fashion_id"], name: "index_shirts_on_men_fashion_id"
  end

  create_table "t_shirts", force: :cascade do |t|
    t.string "brand"
    t.decimal "price"
    t.string "size"
    t.string "color"
    t.text "description"
    t.bigint "men_fashion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["men_fashion_id"], name: "index_t_shirts_on_men_fashion_id"
  end

  create_table "varients", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.string "color"
    t.string "size"
    t.string "sku"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_varients_on_product_id"
  end

  create_table "women_fashions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
