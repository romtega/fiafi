class AddSlugToFiados < ActiveRecord::Migration
  def change
    add_column :fiados, :slug, :string
    add_index :fiados, :slug, unique: true
  end
end
