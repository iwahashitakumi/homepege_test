class AddUpdateByToContacts < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :update_by, :integer
  end
end
