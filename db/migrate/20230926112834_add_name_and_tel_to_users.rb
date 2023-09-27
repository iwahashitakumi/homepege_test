class AddNameAndTelToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string,           null: false, default: "",   comment: '名前カラムの追加'
    add_column :users, :phone_number, :string,   null: false, default: "",   comment: '電話番号カラムの追加'
  end
end
