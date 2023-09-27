class RenameTjobEntriesToJobEntries < ActiveRecord::Migration[7.0]
  def change
    rename_table :tjob_entries, :job_entries
  end
end
