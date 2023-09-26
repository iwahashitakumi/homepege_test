class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.integer :type,                      null: false
      t.text :message,                      null: false, default: ""
      t.string :name,                       null: false, default: ""
      t.string :name_kana,                  null: false, default: ""
      t.string :email,                      null: false, default: ""
      t.string :phone_number,               null: false, default: ""
      t.boolean :callback_requested,        null: false, default: ""
      t.integer :contact_method,            null: false
      t.integer :status,                    null: false

      t.timestamps
    end
  end
end
