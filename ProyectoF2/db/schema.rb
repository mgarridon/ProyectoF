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

ActiveRecord::Schema.define(version: 2018_05_02_011946) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "producto2s", force: :cascade do |t|
    t.string "descripcion"
    t.integer "precio"
    t.bigint "vendedor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vendedor_id"], name: "index_producto2s_on_vendedor_id"
  end

  create_table "productos", force: :cascade do |t|
    t.string "descripcion"
    t.integer "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proveedors", force: :cascade do |t|
    t.string "nombre"
    t.integer "telefono"
    t.string "tipo_producto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sucursals", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.integer "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendedors", force: :cascade do |t|
    t.string "nombre"
    t.integer "telefono"
    t.string "correo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "producto2s", "vendedors"
end
