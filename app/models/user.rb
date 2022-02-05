class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # has_many :meme_creator_listings
  # has_many :bookings
  # has_one_attached :photo

  validates :name, :email, presence: true
  validates :email, confirmation: true, uniqueness: true
  validates :name, length: { maximum: 16 }

end
