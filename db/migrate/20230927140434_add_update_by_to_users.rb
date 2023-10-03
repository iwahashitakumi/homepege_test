class AddUpdateByToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :update_by, :integer,     comment: '対応した管理者のid'
  end
end
