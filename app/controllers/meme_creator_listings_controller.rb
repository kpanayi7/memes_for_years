class MemeCreatorListingsController < ApplicationController
  def index
    if params[:query].present?
      @meme_creator_listings = MemeCreatorListing.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @meme_creator_listings = MemeCreatorListing.all
    end
  end

  def new
    @meme_creator_listing = MemeCreatorListing.new
  end

  def create
    @meme_creator_listing = MemeCreatorListing.new(power_params)
    @meme_creator_listing.user = current_user

    if @meme_creator_listing.save!
      redirect_to power_path(@power)
    else
      render :new
    end
  end

  def my_meme_creator_listings
    @color = ""
    @meme_creator_listings = current_user.powers
    @active_bookings = []
    @meme_creator_listing.each do |meme_creator_listings|
      meme_creator_listings.bookings.each do |booking|
        @active_bookings << booking
      end
    end
  end

  def show
    @meme_creator_listing = MemeCreatorListing.find(params[:id])
    @booking = Booking.new
  end

  def destroy
    @meme_creator_listing = MemeCreatorListing.find(params[:id])
    @meme_creator_listing.destroy
    redirect_to my_meme_creator_listing_path
  end

  def edit
    @meme_creator_listing = MemeCreatorListing.find(params[:id])
  end

  def update
    @meme_creator_listing = MemeCreatorListing.find(params[:id])
    @meme_creator_listing.update(@meme_creator_listing_params)
    if @meme_creator_listing.save!
      redirect_to my_meme_creator_listing_path
    end
  end

  private

  def meme_creator_listing_params
    params.require(:meme_creator_listing).permit( :photo, :hourly_price, :user_id, :name, :location)
  end
end
