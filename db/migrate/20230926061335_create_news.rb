class CreateNews < ActiveRecord::Migration[7.0]
  def change
    create_table :news do |t|
      t.date :calendar_date,        null: false,                              comment: 'お知らせ日'    
      t.string :title,              null: false, default: "",                 comment: 'お知らせタイトル' 
      t.datetime :start_datetime,   null: false,                              comment: 'お知らせの公開時間(開始)'
      t.datetime :end_datetime,     null: false,                              comment: 'お知らせの公開時間(終了)'
      t.text :body,                 null: false, default: "",                 comment: 'お知らせの内容' 

      t.timestamps
    end
  end
end
