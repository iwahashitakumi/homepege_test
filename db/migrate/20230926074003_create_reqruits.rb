class CreateReqruits < ActiveRecord::Migration[7.0]
  def change
    create_table :reqruits do |t|
      t.integer :recruit_type,      null: false
      t.string :name,               null: false, default: ""
      t.string :name_kana,          null: false, default: ""
      t.string :phone_number,       null: false, default: ""
      t.string :email,              null: false, default: ""
      t.date :birth_date,           null: false
      t.integer :sex,               null: false
      t.integer :preferecture,      null: false
      t.string :city,               null: false, default: ""
      t.string :street,             null: false, default: ""
      t.integer :status,            null: false

      t.timestamps
    end
  end
end
