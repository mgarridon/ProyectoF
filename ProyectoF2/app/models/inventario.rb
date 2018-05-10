class Inventario < ApplicationRecord
  validates :cant_prod, numericality: true
  validates :precio_inv, numericality: true
  validates :descripcion_prod , presence: true
end
