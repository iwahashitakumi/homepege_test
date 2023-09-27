class RemovePrefectureFromJobEntries < ActiveRecord::Migration[7.0]
  def change
    remove_column :job_entries, :prefecture, :integer,   comment: '不要な都道府県カラムの削除'
  end
end
