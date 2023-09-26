class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.string :name,              null: false, default: ""
      t.string :address,           null: false, default: ""
      t.text :access,              null: false, default: ""
      t.text :business_time,       null: false, default: ""
      t.string :phone_number,      null: false, default: ""
      t.integer :counter_seats,    null: false, default: ""
      t.integer :table_seats,      null: false, default: ""
      t.string :site_name,         null: false, default: ""
      t.text :gourmet_site_link,   null: false, default: ""
      t.string :shop_images,       null: false

      t.timestamps
    end
  end
end
