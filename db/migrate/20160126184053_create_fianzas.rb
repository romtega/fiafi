class CreateFianzas < ActiveRecord::Migration
  def change
    create_table :fianzas do |t|
      t.string :numerofianza
      t.attachment :textofianza

      t.timestamps null: false
    end
  end
end
