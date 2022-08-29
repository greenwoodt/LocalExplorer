class AddColumnToTrips < ActiveRecord::Migration[7.0]
  def change
    add_monetize :trips, :price, currency: { present: false }

  end
end
