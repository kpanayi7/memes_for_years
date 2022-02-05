class MemeCreatorListingsController < ApplicationController
  before_action :find_meme_creator_listing, only: [:show]

  def index
    @meme_creator_listing = MemeCreatorListing.all
  end

  def show
  end

  private

  def meme_creator_listing_params
    params.require(:list).permit(:name)
  end

  def find_meme_creator_listing
    @meme_creator_listing = MemeCreatorListing.find(params[:id])
  end
end
