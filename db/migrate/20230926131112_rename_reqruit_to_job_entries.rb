class RenameReqruitToJobEntries < ActiveRecord::Migration[7.0]
  def change
    rename_table :reqruits, :job_entries,   comment: 'テーブル名の変更'
  end
end
