class AddColumnsToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :sets, :text, default: '[{"body": "", "article_images": ""}]', null: false,     comment: 'セット情報'
    add_reference :articles, :prefectures, null: false, foreign_key: true,                             comment: '都道府県テーブルid'
  end
end
