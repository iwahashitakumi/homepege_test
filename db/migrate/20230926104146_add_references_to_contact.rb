class AddReferencesToContact < ActiveRecord::Migration[7.0]
  def change
    add_reference :contacts, :user, null: false, foreign_key: true,   comment: '外部キーの追加'
  end
end
