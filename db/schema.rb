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

ActiveRecord::Schema.define(version: 20160114183845) do

  create_table "fiados", force: :cascade do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "rfc"
    t.string   "telefono"
    t.string   "email"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
    t.string   "cdf_file_name"
    t.string   "cdf_content_type"
    t.integer  "cdf_file_size"
    t.datetime "cdf_updated_at"
    t.string   "ife_file_name"
    t.string   "ife_content_type"
    t.integer  "ife_file_size"
    t.datetime "ife_updated_at"
    t.string   "cf_file_name"
    t.string   "cf_content_type"
    t.integer  "cf_file_size"
    t.datetime "cf_updated_at"
    t.string   "da_file_name"
    t.string   "da_content_type"
    t.integer  "da_file_size"
    t.datetime "da_updated_at"
    t.string   "ac_file_name"
    t.string   "ac_content_type"
    t.integer  "ac_file_size"
    t.datetime "ac_updated_at"
    t.string   "mac_file_name"
    t.string   "mac_content_type"
    t.integer  "mac_file_size"
    t.datetime "mac_updated_at"
    t.string   "ah_file_name"
    t.string   "ah_content_type"
    t.integer  "ah_file_size"
    t.datetime "ah_updated_at"
    t.string   "ber_file_name"
    t.string   "ber_content_type"
    t.integer  "ber_file_size"
    t.datetime "ber_updated_at"
    t.string   "cc_file_name"
    t.string   "cc_content_type"
    t.integer  "cc_file_size"
    t.datetime "cc_updated_at"
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
