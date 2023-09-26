class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title,                 null: false, default: ""
      t.datetime :start_datetime,      null: false
      t.datetime :end_datetime,        null: false
      t.text :body,                    null: false, default: ""
      t.string :article_images,        default: ""
      t.references :user,              null: false, foreign_key: true

      t.timestamps
    end
  end
end
