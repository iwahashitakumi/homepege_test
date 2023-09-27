class AddUseToJobEntries < ActiveRecord::Migration[7.0]
  def change
    add_reference :job_entries, :update_by, null: true, foreign_key: { to_table: :users }
  end
end
