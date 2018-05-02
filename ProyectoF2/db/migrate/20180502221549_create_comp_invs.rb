class CreateCompInvs < ActiveRecord::Migration[5.2]
  def change
    create_table :comp_invs do |t|
      t.references :compra, foreign_key: true
      t.references :inventario, foreign_key: true

      t.timestamps
    end
  end
end
