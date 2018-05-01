class CreateProveedors < ActiveRecord::Migration[5.2]
  def change
    create_table :proveedors do |t|
      t.string :nombre
      t.integer :telefono
      t.string :tipo_producto

      t.timestamps
    end
  end
end
