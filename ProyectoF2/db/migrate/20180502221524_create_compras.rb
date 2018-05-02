class CreateCompras < ActiveRecord::Migration[5.2]
  def change
    create_table :compras do |t|
      t.integer :id_factura
      t.integer :id_producto
      t.integer :cant_comp
      t.integer :precio_comp
      t.integer :fecha_comp
      t.references :proveedor, foreign_key: true

      t.timestamps
    end
  end
end
