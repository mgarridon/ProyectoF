class Producto < ApplicationRecord
  belongs_to :proveedor
  belongs_to :sucursal
end
