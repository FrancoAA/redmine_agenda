class AddCamposToContactos < ActiveRecord::Migration
  def change
    add_column :contactos, :empresa, :string
    add_column :contactos, :direccion, :string
  end
end
