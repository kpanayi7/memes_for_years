class MemeCreatorListingsController < ApplicationController
  before_action :find_meme_creator_listing, only: [:show]

  def index
    @meme_creator_listings = MemeCreatorListing.all
  end

  def create
    @meme_creator_listing = MemeCreatorListing.new(meme_creator_listing_params)
  end

  def show
    @meme_creator_listing = MemeCreatorListing.find(params[:id])
  end

  private

  def meme_creator_listing_params
    params.require(:list).permit(:creator_name, :speciality, :hourly_price, :photo)
  end

  def find_meme_creator_listing
    @meme_creator_listing = MemeCreatorListing.find(params[:id])
  end
end
