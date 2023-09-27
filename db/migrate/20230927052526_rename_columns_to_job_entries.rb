class RenameColumnsToJobEntries < ActiveRecord::Migration[7.0]
  def change
    rename_column :job_entries, :city, :city_name
    rename_column :job_entries, :street, :address
  end
end
