class AddUseToContact < ActiveRecord::Migration[7.0]
  def change
    add_reference :contacts, :update_by, null: true, foreign_key: { to_table: :users },   comment: 'update_byを外部キーとして関連付け'
  end
end
