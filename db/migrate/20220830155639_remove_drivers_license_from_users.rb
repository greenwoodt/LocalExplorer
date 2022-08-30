class RemoveDriversLicenseFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :drivers_license, :string
  end
end
