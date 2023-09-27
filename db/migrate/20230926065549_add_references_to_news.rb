class AddReferencesToNews < ActiveRecord::Migration[7.0]
  def change
    add_reference :news, :user, null: false, foreign_key: true,   comment: '外部キーの追加'
  end
end
