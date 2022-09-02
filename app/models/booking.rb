class Booking < ApplicationRecord
  belongs_to :trip
  belongs_to :user
  belongs_to :chatroom
  has_one :review, dependent: :destroy
  has_one :chatroom, dependent: :destroy
end
