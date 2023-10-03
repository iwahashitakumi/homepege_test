class CreateReqruits < ActiveRecord::Migration[7.0]
  def change
    create_table :reqruits do |t|
      t.integer :recruit_type,      null: false,                                           comment: '希望雇用形態'
      t.string :name,               null: false, default: "",                              comment: '応募者の名前'
      t.string :name_kana,          null: false, default: "",                              comment: '応募者の名前(カナ)'
      t.string :phone_number,       null: false, default: "",                              comment: '応募者の電話番号'
      t.string :email,              null: false, default: "",                              comment: '応募者のメールアドレス'
      t.date :birth_date,           null: false,                                           comment: '応募者の生年月日'
      t.integer :sex,               null: false,                                           comment: '応募者の性別'
      t.integer :preferecture,      null: false,                                           comment: '応募者の住所'
      t.string :city,               null: false, default: "",                              comment: '応募者の市町村区'
      t.string :street,             null: false, default: "",                              comment: '応募者の番地等'
      t.integer :status,            null: false,                                           comment: '応募の処理状況'

      t.timestamps
    end
  end
end
