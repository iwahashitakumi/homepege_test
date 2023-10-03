class RemoveUserIdFromJobEntries < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :job_entries, :users
    remove_index :job_entries, :user_id
    remove_reference :job_entries, :user, index: true,   comment: '不要な外部キーの削除'
  end
end
