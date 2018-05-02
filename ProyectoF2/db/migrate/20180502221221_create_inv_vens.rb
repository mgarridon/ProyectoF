class CreateInvVens < ActiveRecord::Migration[5.2]
  def change
    create_table :inv_vens do |t|
      t.references :venta, foreign_key: true
      t.references :inventario, foreign_key: true

      t.timestamps
    end
  end
end
