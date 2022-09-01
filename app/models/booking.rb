class Booking < ApplicationRecord
  belongs_to :trip
  belongs_to :user
  has_one :review, dependent: :destroy
end
