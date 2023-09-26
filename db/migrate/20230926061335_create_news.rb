class CreateNews < ActiveRecord::Migration[7.0]
  def change
    create_table :news do |t|
      t.date :calendar_date,        null: false
      t.string :title,              null: false, default: ""
      t.datetime :start_datetime,   null: false
      t.datetime :end_datetime,     null: false
      t.text :body,                 null: false, default: ""

      t.timestamps
    end
  end
end
