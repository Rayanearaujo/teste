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

ActiveRecord::Schema.define(version: 20150327133036) do

  create_table "crimes", force: :cascade do |t|
    t.integer  "tipo_id"
    t.integer  "local_id"
    t.date     "data"
    t.datetime "hora"
    t.string   "descricao"
    t.float    "valorestimado"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "crimes", ["local_id"], name: "index_crimes_on_local_id"
  add_index "crimes", ["tipo_id"], name: "index_crimes_on_tipo_id"

  create_table "locais", force: :cascade do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "objetos", force: :cascade do |t|
    t.integer  "crime_id"
    t.integer  "vitima_id"
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "objetos", ["crime_id"], name: "index_objetos_on_crime_id"
  add_index "objetos", ["vitima_id"], name: "index_objetos_on_vitima_id"

  create_table "tipos", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vitimas", force: :cascade do |t|
    t.string   "sexo"
    t.integer  "idade"
    t.string   "email"
    t.string   "senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
