class RemoveUserIdToPost < ActiveRecord::Migration[5.2]
  def change
  	remove_column :posts,:user_id,:integer
  	remove_index :posts,:user_id
  end
end
