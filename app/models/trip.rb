class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :start_date, :end_date, presence: true
  validates :name, presence: true
  validates :address, :description, :capacity, :difficulty, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

# customise validation
  validate :validate_photo, on: :create

  def validate_photo
    return if photo.attached?
    errors.add(:photo, "must be attached")
  end

  def shortened_description
    return description if description.length < 90

    without_last_word = description[0..90].match(/(.+) \S+$/)

    if without_last_word
      without_last_word[1] + '...'
    else
      description[0..90] + '...'
    end
  end
end
