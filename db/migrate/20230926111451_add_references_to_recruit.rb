class AddReferencesToRecruit < ActiveRecord::Migration[7.0]
  def change
    add_reference :reqruits, :user, null: false, foreign_key: true
  end
end
