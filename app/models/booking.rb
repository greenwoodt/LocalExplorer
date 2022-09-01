class Booking < ApplicationRecord
  belongs_to :trip
  belongs_to :user
  has_many :reviews, dependent: :destroy
end
