class AddUserIdToDmeets < ActiveRecord::Migration[7.0]
  def change
    add_column :dmeets, :user_id, :integer
  end
end
