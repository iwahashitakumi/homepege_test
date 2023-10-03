class RemoveUserIdFromArticles < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :articles, :users
    remove_index :articles, :user_id
    remove_reference :articles, :user, index: true,   comment: '不要な外部キーの削除'
  end
end
