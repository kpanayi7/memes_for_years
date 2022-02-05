class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :meme_creator_listing
  # validates :user_id, :meme_creator_listings_id, presence: true
end
