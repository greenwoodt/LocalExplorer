class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.text :description
      t.integer :capacity
      t.string :difficulty
      t.datetime :start_date
      t.datetime :end_date
      t.references :user, null: false, foregin_key: true
      t.timestamps
    end
  end
end
