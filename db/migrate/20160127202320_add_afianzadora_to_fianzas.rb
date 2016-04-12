class AddAfianzadoraToFianzas < ActiveRecord::Migration
  def change
    add_column :fianzas, :afianzadora, :string
  end
end
