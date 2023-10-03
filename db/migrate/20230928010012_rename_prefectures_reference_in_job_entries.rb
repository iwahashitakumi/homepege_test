class RenamePrefecturesReferenceInJobEntries < ActiveRecord::Migration[7.0]
  def change
    rename_column :job_entries, :prefectures_id, :prefecture_id,                                                comment: 'リレーションを持つカラムは単数系'
    rename_index :job_entries, "index_job_entries_on_prefectures_id", "index_job_entries_on_prefecture_id",     comment: 'リレーションを持つカラムは単数系'
  end
end
