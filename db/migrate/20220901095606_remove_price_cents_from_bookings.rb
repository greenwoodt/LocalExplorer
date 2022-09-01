class RemovePriceCentsFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :price_cents, :string
  end
end
