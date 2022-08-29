class AddColumnToBooking < ActiveRecord::Migration[7.0]
  def change
    add_monetize :bookings, :price_cents, currency: { present: false }
  end
end
