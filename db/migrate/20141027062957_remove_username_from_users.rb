class RemoveUsernameFromUsers < ActiveRecord::Migration
  def down
  	remove_column :username
  end
end
	