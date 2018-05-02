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

ActiveRecord::Schema.define(version: 2018_05_02_221549) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.integer "telefono"
    t.string "correo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comp_invs", force: :cascade do |t|
    t.bigint "compra_id"
    t.bigint "inventario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["compra_id"], name: "index_comp_invs_on_compra_id"
    t.index ["inventario_id"], name: "index_comp_invs_on_inventario_id"
  end

  create_table "compras", force: :cascade do |t|
    t.integer "id_factura"
    t.integer "id_producto"
    t.integer "cant_comp"
    t.integer "precio_comp"
    t.integer "fecha_comp"
    t.bigint "proveedor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["proveedor_id"], name: "index_compras_on_proveedor_id"
  end

  create_table "inv_vens", force: :cascade do |t|
    t.bigint "venta_id"
    t.bigint "inventario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inventario_id"], name: "index_inv_vens_on_inventario_id"
    t.index ["venta_id"], name: "index_inv_vens_on_venta_id"
  end

  create_table "inventarios", force: :cascade do |t|
    t.string "descripcion_prod"
    t.integer "cant_prod"
    t.integer "precio_inv"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proveedors", force: :cascade do |t|
    t.string "descrip_pro"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "venta", force: :cascade do |t|
    t.bigint "cliente_id"
    t.integer "id_producto_venta"
    t.integer "cantidad_venta"
    t.integer "precio_venta"
    t.integer "fecha_venta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_venta_on_cliente_id"
  end

  add_foreign_key "comp_invs", "compras"
  add_foreign_key "comp_invs", "inventarios"
  add_foreign_key "compras", "proveedors"
  add_foreign_key "inv_vens", "inventarios"
  add_foreign_key "inv_vens", "venta", column: "venta_id"
  add_foreign_key "venta", "clientes"
end
