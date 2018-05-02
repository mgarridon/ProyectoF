class CreateInventarios < ActiveRecord::Migration[5.2]
  def change
    create_table :inventarios do |t|
      t.string :descripcion_prod
      t.integer :cant_prod
      t.integer :precio_inv

      t.timestamps
    end
  end
end
