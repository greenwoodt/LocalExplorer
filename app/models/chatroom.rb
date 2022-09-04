class Chatroom < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :messages, dependent: :destroy
end
