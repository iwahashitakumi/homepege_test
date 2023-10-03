class RemovePrefecturesIdFromArticles < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles, :prefectures_id,   comment: '不要な外部キーの削除'
  end
end
