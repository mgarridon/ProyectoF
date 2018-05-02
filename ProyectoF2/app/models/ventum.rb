class Ventum < ApplicationRecord
  belongs_to :cliente
  belongs_to :inventario
  belongs_to :producto
end
