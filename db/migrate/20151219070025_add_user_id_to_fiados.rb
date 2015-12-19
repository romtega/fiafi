class AddUserIdToFiados < ActiveRecord::Migration
  def change
    add_column :fiados, :user_id, :integer
  end
end
