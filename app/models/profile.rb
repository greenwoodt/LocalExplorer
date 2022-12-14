class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :front_driver_license
  has_one_attached :back_driver_license
  has_one_attached :profile_photo
  has_many :reviews, through: :bookings
  validates :first_name, :last_name, :username, presence: true
end
