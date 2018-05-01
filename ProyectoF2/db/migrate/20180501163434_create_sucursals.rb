class CreateSucursals < ActiveRecord::Migration[5.2]
  def change
    create_table :sucursals do |t|
      t.string :nombre
      t.string :dirección
      t.integer :telefono

      t.timestamps
    end
  end
end
