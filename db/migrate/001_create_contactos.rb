class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.string :nombre
      t.string :apellido
      t.string :telefono
      t.string :email
    end
  end
end
