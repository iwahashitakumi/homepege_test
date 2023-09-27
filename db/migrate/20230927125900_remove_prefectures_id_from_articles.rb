class RemovePrefecturesIdFromArticles < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles, :prefectures_id
  end
end
