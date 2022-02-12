class BookingsController < ApplicationController

  before_action :find_booking, only: %i[show]

  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @meme_creator_listing = MemeCreatorListing.find(params[:meme_creator_listing_id])
     @booking = Booking.new

  end

  def create
    @booking = Booking.new(booking_params)
    @booking.meme_creator_listing = MemeCreatorListing.find(params[:meme_creator_listing_id])
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path, notice: "Booking Successful"
    else
      render meme_creator_listings/show
    end
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:meme_creator_listing_id)
  end

end
