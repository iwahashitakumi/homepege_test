class RemoveUserIdFromNews < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :news, :users
    remove_index :news, :user_id
    remove_reference :news, :user, index: true,   comment: '不要な外部キーの削除'
  end
end
