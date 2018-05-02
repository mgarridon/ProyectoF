class Cliente < ApplicationRecord
  validates :nombre , presence: { message: 'Ingresar Nombre válido' }
  validates :apellido , presence: { message: 'Ingresar Apellido válido' }
  validates :telefono, numericality: true, length: { maximum: 9 }
  validates :correo, uniqueness:{ message: 'Correo existente' }
end
