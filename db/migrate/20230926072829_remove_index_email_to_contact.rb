class RemoveIndexEmailToContact < ActiveRecord::Migration[7.0]
  def change
    remove_index :contacts, :email
  end
end
