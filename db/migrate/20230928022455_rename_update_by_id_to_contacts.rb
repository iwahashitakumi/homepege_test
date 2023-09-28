class RenameUpdateByIdToContacts < ActiveRecord::Migration[7.0]
  def change
    rename_column :contacts, :update_by_id, :update_by,     comment: 'カラム名の変更'
  end
end
