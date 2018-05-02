class CreateInventarios < ActiveRecord::Migration[5.2]
  def change
    create_table :inventarios do |t|
      t.string :nombre_produc
      t.integer :cantidad
      t.references :venta, foreign_key: true
      t.references :producto, foreign_key: true

      t.timestamps
    end
  end
end
