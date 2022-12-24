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

ActiveRecord::Schema[7.0].define(version: 2022_12_23_184220) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "invoices", force: :cascade do |t|
    t.string "status"
    t.float "grand_total"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "shop_id"
    t.index ["shop_id"], name: "index_invoices_on_shop_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "shop_id"
    t.index ["shop_id"], name: "index_items_on_shop_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "status"
    t.float "grand_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "shop_id"
    t.bigint "invoice_id"
    t.bigint "cashier_id"
    t.index ["cashier_id"], name: "index_orders_on_cashier_id"
    t.index ["invoice_id"], name: "index_orders_on_invoice_id"
    t.index ["shop_id"], name: "index_orders_on_shop_id"
  end

  create_table "orders_items", force: :cascade do |t|
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "items_id"
    t.bigint "orders_id"
    t.index ["items_id"], name: "index_orders_items_on_items_id"
    t.index ["orders_id"], name: "index_orders_items_on_orders_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "shop_owner_id"
    t.index ["shop_owner_id"], name: "index_shops_on_shop_owner_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "role", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jti", null: false
    t.bigint "shop_id"
    t.string "username", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["shop_id"], name: "index_users_on_shop_id"
  end

  add_foreign_key "invoices", "shops"
  add_foreign_key "items", "shops"
  add_foreign_key "orders", "invoices"
  add_foreign_key "orders", "shops"
  add_foreign_key "orders", "users", column: "cashier_id"
  add_foreign_key "orders_items", "items", column: "items_id"
  add_foreign_key "orders_items", "orders", column: "orders_id"
  add_foreign_key "shops", "users", column: "shop_owner_id"
  add_foreign_key "users", "shops"
end
