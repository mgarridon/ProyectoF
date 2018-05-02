class CreateProductos < ActiveRecord::Migration[5.2]
  def change
    create_table :productos do |t|
      t.string :descripcion
      t.integer :precio
      t.references :proveedor, foreign_key: true
      t.references :sucursal, foreign_key: true

      t.timestamps
    end
  end
end