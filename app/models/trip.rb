class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_one_attached :photo
  validates :start_date, :end_date, presence: true

end
