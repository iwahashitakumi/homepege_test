class RemoveUpdateByIdFromJobEntries < ActiveRecord::Migration[7.0]
  def change
    remove_index :job_entries, :update_by_id
    remove_reference :job_entries, :user, index: true,   comment: '不要なリファレンス型の削除'
  end
end
