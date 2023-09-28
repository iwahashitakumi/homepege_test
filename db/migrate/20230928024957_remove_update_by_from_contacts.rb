class RemoveUpdateByFromContacts < ActiveRecord::Migration[7.0]
  def change
    remove_column :contacts, :update_by
  end
end
