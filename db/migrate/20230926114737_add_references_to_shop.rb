class AddReferencesToShop < ActiveRecord::Migration[7.0]
  def change
    add_reference :shops, :user, null: false, foreign_key: true,   comment: '外部キーの追加'
  end
end
