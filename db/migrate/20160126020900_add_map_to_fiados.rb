class AddMapToFiados < ActiveRecord::Migration
  def change
    add_column :fiados, :latitude, :float
    add_column :fiados, :longitude, :float
  end
end
