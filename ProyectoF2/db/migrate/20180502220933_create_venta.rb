class CreateVenta < ActiveRecord::Migration[5.2]
  def change
    create_table :venta do |t|
      t.references :cliente, foreign_key: true
      t.integer :id_producto_venta
      t.integer :cantidad_venta
      t.integer :precio_venta
      t.integer :fecha_venta

      t.timestamps
    end
  end
end
