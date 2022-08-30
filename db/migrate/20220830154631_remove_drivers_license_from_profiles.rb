class RemoveDriversLicenseFromProfiles < ActiveRecord::Migration[7.0]
  def change
    remove_column :profiles, :drivers_license
  end
end
