class RemovePrefectureFromJobEntries < ActiveRecord::Migration[7.0]
  def change
    remove_column :job_entries, :prefecture, :integer
  end
end
