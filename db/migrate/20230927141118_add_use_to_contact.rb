class AddUseToContact < ActiveRecord::Migration[7.0]
  def change
    add_reference :contacts, :update_by, null: true, foreign_key: { to_table: :users }
  end
end
