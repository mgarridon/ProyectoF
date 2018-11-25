class Cliente < ApplicationRecord
  validates :nombre , presence: true { message: 'Ingresar Nombre válido' }
  validates :apellido , presence: { message: 'Ingresar Apellido válido' }
  validates :telefono, numericality: true, length: { is:9 }
  validates :correo, uniqueness:{ message: 'Correo existente' }
end
