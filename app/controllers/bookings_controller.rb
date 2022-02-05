class BookingsController < ApplicationController

  before_action :find_booking, only: %i[show]

  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
  end

  def new
    @booking = Booking.new
    @meme_creator_listing = MemeCreatorListingsController.find(params[:meme_creator_listing_id])

  end

  def create
    @booking = Booking.new(booking_params)
    @meme_creator_listing = MemeCreatorListingsController.find(params[:meme_creator_listing_id])
    @booking.meme_creator_listing = @meme_creator_listing
    @booking.user = current_user
    if @booking.save
      redirect_to meme_creator_listing_path(@meme_creator_listing)
    else
      render :new
    end
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
