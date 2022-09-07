class User < ApplicationRecord
  has_one :profile, dependent: :destroy
  has_many :trips, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :messages, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def received_bookings
    trips.map {|trip| trip.bookings}.flatten
  end
end
