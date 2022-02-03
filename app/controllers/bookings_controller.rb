class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def select_meme_creator_listing
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.meme_creator_listing_id = params[:meme_creator_listing_id]
    @booking.save
    redirect_to meme_creator_listing_path(params[:meme_creator_listing_id])
  end

  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def update
    booking = Booking.find(params[:id])
    booking.status = params[:booking][:status]
    booking.save
    redirect_to my_meme_creator_listing_path(current_user)
  end

  def destroy
    booking = Booking.find(params[:id])
    booking.destroy!
    redirect_to my_meme_creator_listing_path(current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
