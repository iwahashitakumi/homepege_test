class RemoveIndexEmailToContact < ActiveRecord::Migration[7.0]
  def change
    remove_index :contacts, :email,   comment: 'uniqueが不要なためindex型のカラムの削除'
  end
end
