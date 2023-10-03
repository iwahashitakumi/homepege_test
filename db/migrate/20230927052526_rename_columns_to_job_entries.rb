class RenameColumnsToJobEntries < ActiveRecord::Migration[7.0]
  def change
    rename_column :job_entries, :city, :city_name,   comment: '市町村区のカラム名の変更'
    rename_column :job_entries, :street, :address,   comment: '番地等のカラム名の変更'
  end
end
