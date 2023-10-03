class RemoveUserIdFromShops < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :shops, :users
    remove_index :shops, :user_id
    remove_reference :shops, :user, index: true,   comment: '不要な外部キーの削除'
  end
end
