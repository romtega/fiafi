class AddUserIdToFianzas < ActiveRecord::Migration
  def change
    add_column :fianzas, :user_id, :integer
  end
end
