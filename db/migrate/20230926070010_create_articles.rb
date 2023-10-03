class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title,                 null: false, default: "",                              comment: 'ブログ記事のタイトル'
      t.datetime :start_datetime,      null: false,                                           comment: 'ブログの公開時間(開始)'
      t.datetime :end_datetime,        null: false,                                           comment: 'ブログの公開時間(終了)'
      t.text :body,                    null: false, default: "",                              comment: 'ブログの内容'
      t.string :article_images,        default: "",                                           comment: 'ブログの掲載画像'
      t.references :user,              null: false, foreign_key: true

      t.timestamps
    end
  end
end
