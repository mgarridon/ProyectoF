class CreateVenta < ActiveRecord::Migration[5.2]
  def change
    create_table :venta do |t|
      t.string :nombre_producto
      t.integer :precio
      t.integer :total_productos

      t.timestamps
    end
  end
end
