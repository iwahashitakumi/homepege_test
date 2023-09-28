class RenameUpdateByIdToJobEntries < ActiveRecord::Migration[7.0]
  def change
    rename_column :job_entries, :update_by_id, :update_by,     comment: 'カラム名の変更'
  end
end
