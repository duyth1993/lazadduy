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

ActiveRecord::Schema.define(version: 20160210171908) do

  create_table "categories", force: :cascade do |t|
    t.string "name",        limit: 255, null: false
    t.string "description", limit: 255
  end

  create_table "customers", force: :cascade do |t|
    t.string  "shipping_address", limit: 255
    t.string  "shipping_phone",   limit: 255
    t.string  "shipping_name",    limit: 255
    t.integer "user_id",          limit: 4
  end

  create_table "invoices", force: :cascade do |t|
    t.string  "invoice_number", limit: 255, null: false
    t.integer "user_id",        limit: 4
    t.integer "order_id",       limit: 4
  end

  add_index "invoices", ["invoice_number"], name: "index_invoices_on_invoice_number", unique: true, using: :btree

  create_table "manufactures", force: :cascade do |t|
    t.string "name",        limit: 255, null: false
    t.string "description", limit: 255
  end

  create_table "order_lines", force: :cascade do |t|
    t.integer "quantity",      limit: 4
    t.float   "display_price", limit: 24
    t.integer "discount",      limit: 4
    t.integer "discount_type", limit: 4
    t.integer "product_id",    limit: 4
    t.integer "order_id",      limit: 4
  end

  create_table "orders", force: :cascade do |t|
    t.float   "total",         limit: 24
    t.string  "description",   limit: 255
    t.integer "status",        limit: 4
    t.integer "shipping_type", limit: 4
    t.integer "customer_id",   limit: 4
  end

  create_table "products", force: :cascade do |t|
    t.string  "sku",                limit: 255, null: false
    t.string  "name",               limit: 255, null: false
    t.string  "description",        limit: 255
    t.string  "product_attributes", limit: 255
    t.string  "specification",      limit: 255
    t.float   "price",              limit: 24,  null: false
    t.integer "discount",           limit: 4
    t.integer "discount_type",      limit: 4
    t.string  "image",              limit: 255
    t.integer "category_id",        limit: 4
    t.integer "manufacture_id",     limit: 4
  end

  add_index "products", ["sku"], name: "index_products_on_sku", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.string   "email",                  limit: 255,              null: false
    t.string   "phone",                  limit: 255
    t.integer  "role",                   limit: 4,   default: 0,  null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.integer  "failed_attempts",        limit: 4,   default: 0,  null: false
    t.string   "unlock_token",           limit: 255
    t.datetime "locked_at"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
