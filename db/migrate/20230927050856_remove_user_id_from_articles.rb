class RemoveUserIdFromArticles < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :articles, :users
    remove_index :articles, :user_id
    remove_reference :articles, :user, index: true
  end
end
