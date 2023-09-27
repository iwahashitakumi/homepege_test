class RenameColumnsToArticles < ActiveRecord::Migration[7.0]
  def change
    rename_column :articles, :start_datetime, :start_at
    rename_column :articles, :end_datetime, :end_at
  end
end
