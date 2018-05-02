class Ventum < ApplicationRecord
  belongs_to :cliente

  validates :id_producto_venta, numericality: true
  validates :cantidad_venta, numericality: true
  validates :precio_venta, numericality: true
  validates :fecha_venta, numericality: true
end
