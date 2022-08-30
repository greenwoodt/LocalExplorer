class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :front_driver_license
  has_one_attached :back_driver_license
  has_one_attached :profile_photo
end
