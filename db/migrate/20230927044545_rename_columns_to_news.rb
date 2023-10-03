class RenameColumnsToNews < ActiveRecord::Migration[7.0]
  def change
    rename_column :news, :start_datetime, :start_at,   comment: '公開開始時間のカラム名の変更'
    rename_column :news, :end_datetime, :end_at,       comment: '公開開始時間のカラム名の変更'
  end
end
