class Compra < ApplicationRecord
  belongs_to :proveedor

  validates :id_factura, numericality: true
  validates :id_producto, numericality: true
  validates :cant_comp, numericality: true
  validates :precio_comp, numericality: true
  validates :fecha_comp, numericality: true
end
