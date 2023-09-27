class RenamePreferectureColumnToJobEntries < ActiveRecord::Migration[7.0]
  def change
    rename_column :job_entries, :preferecture, :prefecture
  end
end
