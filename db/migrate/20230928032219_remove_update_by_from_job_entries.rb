class RemoveUpdateByFromJobEntries < ActiveRecord::Migration[7.0]
  def change
    remove_column :job_entries, :update_by
  end
end
