class Contacto < ActiveRecord::Base
  unloadable

  validates :nombre, presence: true
  validates :apellido, presence: true
  validates :telefono, presence: true
  validates :email, presence: true
end
