class CreateVendedors < ActiveRecord::Migration[5.2]
  def change
    create_table :vendedors do |t|
      t.string :nombre
      t.integer :telefono
      t.string :correo

      t.timestamps
    end
  end
end
