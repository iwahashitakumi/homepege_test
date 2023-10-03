class RemoveUpdateByFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :update_by,     comment: '不要なカラムの削除'
  end
end
