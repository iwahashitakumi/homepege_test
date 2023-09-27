class RemovereferencesIdFromArticles < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :articles, :prefectures
    remove_index :articles, :prefectures_id
    remove_reference :articles, :prefecture, index: true
  end
end
