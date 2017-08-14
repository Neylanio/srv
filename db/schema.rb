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

ActiveRecord::Schema.define(version: 20170814182827) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authenticators", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logins", force: :cascade do |t|
    t.string "login"
    t.string "senha"
    t.bigint "user_id"
    t.bigint "server_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["server_id"], name: "index_logins_on_server_id"
    t.index ["user_id"], name: "index_logins_on_user_id"
  end

  create_table "servers", force: :cascade do |t|
    t.string "login"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "nome"
  end

  create_table "srv_auths", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_servers", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "server_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["server_id"], name: "index_user_servers_on_server_id"
    t.index ["user_id"], name: "index_user_servers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  add_foreign_key "logins", "servers"
  add_foreign_key "logins", "users"
  add_foreign_key "user_servers", "servers"
  add_foreign_key "user_servers", "users"
end
