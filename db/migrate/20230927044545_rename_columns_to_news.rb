class RenameColumnsToNews < ActiveRecord::Migration[7.0]
  def change
    rename_column :news, :start_datetime, :start_at
    rename_column :news, :end_datetime, :end_at
  end
end
