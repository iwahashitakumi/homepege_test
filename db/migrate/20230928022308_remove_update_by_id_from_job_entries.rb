class RemoveUpdateByIdFromContacts < ActiveRecord::Migration[7.0]
  def change
    remove_index :contacts, :update_by_id
    remove_reference :contacts, :user, index: true,   comment: '不要なリファレンス型の削除'
  end
end
