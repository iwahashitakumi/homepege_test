class AddIndexEmailToContact < ActiveRecord::Migration[7.0]
  def change
    add_index :contacts, :email, unique: true,   comment: 'index型のemailカラムを追加しuniqueを指定'
  end
end
