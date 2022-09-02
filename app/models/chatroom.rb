class Chatroom < ApplicationRecord
  has_many :bookings
  has_many :messages
end
