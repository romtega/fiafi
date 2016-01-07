class CreateFiados < ActiveRecord::Migration
  def change
    create_table :fiados do |t|
      t.string :nombre
      t.string :direccion
      t.string :rfc
      t.string :telefono
      t.string :email


      t.timestamps null: false
    end
  end
end
