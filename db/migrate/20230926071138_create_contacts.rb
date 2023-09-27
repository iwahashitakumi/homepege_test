class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.integer :type,                      null: false,                                           comment: '問い合わせの種類'
      t.text :message,                      null: false, default: "",                              comment: '問い合わせの内容'
      t.string :name,                       null: false, default: "",                              comment: '問い合わせ者の名前'
      t.string :name_kana,                  null: false, default: "",                              comment: '問い合わせ者の名前(カナ)'
      t.string :email,                      null: false, default: "",                              comment: '問い合わせ者のメールアドレス'
      t.string :phone_number,               null: false, default: "",                              comment: '問い合わせ者の電話番号'
      t.boolean :callback_requested,        null: false, default: "",                              comment: '返信が必要か否か'
      t.integer :contact_method,            null: false,                                           comment: '返信方法'
      t.integer :status,                    null: false,                                           comment: '問い合わせの処理状況'

      t.timestamps
    end
  end
end
