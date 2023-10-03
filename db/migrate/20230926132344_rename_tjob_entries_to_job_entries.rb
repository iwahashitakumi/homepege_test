class RenameTjobEntriesToJobEntries < ActiveRecord::Migration[7.0]
  def change
    rename_table :tjob_entries, :job_entries,   comment: 'テーブル名の変更ミスを訂正'
  end
end
