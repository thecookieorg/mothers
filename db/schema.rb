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

ActiveRecord::Schema.define(version: 20160329171431) do

  create_table "bookkeepers", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "bookkeepers", ["email"], name: "index_bookkeepers_on_email", unique: true
  add_index "bookkeepers", ["reset_password_token"], name: "index_bookkeepers_on_reset_password_token", unique: true

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "message_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["message_id"], name: "index_comments_on_message_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "documents", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "user_id"
    t.string   "attachment"
    t.string   "requested_by"
    t.string   "due_date"
    t.boolean  "verified_by_bookkeeper", default: false
    t.boolean  "mail_instead",           default: false
    t.date     "due_date_by"
  end

  add_index "documents", ["user_id"], name: "index_documents_on_user_id"

  create_table "meetings", force: :cascade do |t|
    t.string   "calendly_meeting_url"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "bookkeeper_name"
  end

  create_table "messages", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "user_id"
    t.boolean  "public",      default: true
  end

  add_index "messages", ["user_id"], name: "index_messages_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "name"
    t.string   "company"
    t.string   "phone"
    t.string   "address"
    t.string   "credit_cards_info"
    t.string   "bank_accounts_info"
    t.string   "leases_info"
    t.string   "loans_info"
    t.boolean  "admin",                  default: false
    t.boolean  "client_admin",           default: true
    t.boolean  "client",                 default: false
    t.boolean  "for_profit",             default: true
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
