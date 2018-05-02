class CreateProducto2s < ActiveRecord::Migration[5.2]
  def change
    create_table :producto2s do |t|
      t.string :descripcion
      t.integer :precio
      t.references :vendedors, foreign_key: true

      t.timestamps
    end
  end
end
