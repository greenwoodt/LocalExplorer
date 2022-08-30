class AddRatingToTrips < ActiveRecord::Migration[7.0]
  def change
    add_column :trips, :rating, :integer
  end
end
