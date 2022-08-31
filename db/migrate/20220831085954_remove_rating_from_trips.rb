class RemoveRatingFromTrips < ActiveRecord::Migration[7.0]
  def change
    remove_column :trips, :rating
  end
end
