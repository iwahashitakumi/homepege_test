class AddCategoryToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :category, :integer, null: false,       comment: 'ブログのカテゴリー'
  end
end
