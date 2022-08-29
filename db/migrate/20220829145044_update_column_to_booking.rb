class UpdateColumnToBooking < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookings, :price_cents_cents, :price
  end
end
