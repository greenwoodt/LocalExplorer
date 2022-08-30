class AddColumnToTrip < ActiveRecord::Migration[7.0]
  def change
    add_reference :trips, :category
  end
end
