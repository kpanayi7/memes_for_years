class MemeCreatorListing < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :description, length: { maximum: 400 }
  validates :element, :speciality, :hourly_price, :user_id, :name, :location, presence: true
  validates :element, inclusion: { in: %w[Air Water Fire Electricity Earth] }
  validates :power_type, inclusion: { in: %w[Mental Flight Strength Transformation Transportation Darkness Healing Sorcery] }
end
