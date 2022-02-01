class Booking < ApplicationRecord
  belongs_to :meme_creator_listings
  belongs_to :user

  validates :user_id, :meme_creator_listings_id, presence: true
end
