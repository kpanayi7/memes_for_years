class MemeCreatorListing < ApplicationRecord
  belongs_to :user
  # has_many :bookings
  # has_one_attached :photo

  validates :description, length: { maximum: 400 }
  # validates :speciality, :hourly_price, :user_id, presence: true
end
