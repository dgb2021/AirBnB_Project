class BookingsController < ApplicationController

  def new
  end

  def create
  end

  private

  def booking_param
    params.require(:booking).permit(:start_date, :end_date)
  end
end
