class RenamePrefecturesReferenceInShops < ActiveRecord::Migration[7.0]
  def change
    rename_column :shops, :prefectures_id, :prefecture_id,                                              comment: 'リレーションを持つカラムは単数系'
    rename_index :shops, "index_shops_on_prefectures_id", "index_shops_on_prefecture_id",               comment: 'リレーションを持つカラムは単数系'
  end
end
