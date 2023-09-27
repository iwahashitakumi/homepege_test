class RemoveUserIdFromNews < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :news, :users
    remove_index :news, :user_id
    remove_reference :news, :user, index: true
  end
end
