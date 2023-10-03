class RenamePreferectureColumnToJobEntries < ActiveRecord::Migration[7.0]
  def change
    rename_column :job_entries, :preferecture, :prefecture,  comment: '都道府県名のカラム名の変更'
  end
end
