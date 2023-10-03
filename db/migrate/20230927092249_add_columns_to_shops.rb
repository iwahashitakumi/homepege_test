class AddColumnsToShops < ActiveRecord::Migration[7.0]
  def change
    add_reference :shops, :prefecture, null: false, foreign_key: true,       comment: '都道府県テーブルid'
    add_column :shops, :city_name, :string,   default: "", null: false,       comment: '市町村区'
  end
end
