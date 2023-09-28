class AddUpdateByToJobEntries < ActiveRecord::Migration[7.0]
  def change
    add_column :job_entries, :update_by, :integer
  end
end
