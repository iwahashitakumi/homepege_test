class RemoveUserIdFromContacts < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :contacts, :users
    remove_index :contacts, :user_id
    remove_reference :contacts, :user, index: true
  end
end
