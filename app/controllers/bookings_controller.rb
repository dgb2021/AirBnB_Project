class BookingsController < ApplicationController

  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
  end

  def create
  end

  private

  def booking_param
    params.require(:booking).permit(:start_date, :end_date)
  end
end
