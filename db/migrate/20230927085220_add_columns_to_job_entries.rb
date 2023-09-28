class AddColumnsToJobEntries < ActiveRecord::Migration[7.0]
  def change
    add_reference :job_entries, :prefecture, null: false, foreign_key: true,  comment: '都道府県テーブルid'
  end
end
