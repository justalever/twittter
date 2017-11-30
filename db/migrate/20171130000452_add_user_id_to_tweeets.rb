class AddUserIdToTweeets < ActiveRecord::Migration[5.1]
  def change
    add_column :tweeets, :user_id, :integer
  end
end
