class User < ApplicationRecord
  has_one :profile
  has_many :trips
  has_many :bookings
  has_many :messages
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def received_bookings
    trips.map {|trip| trip.bookings}.flatten
  end
end
