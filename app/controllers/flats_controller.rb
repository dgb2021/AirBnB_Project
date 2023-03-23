class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end


  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
    if @flat.save
      redirect_to flats_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :description, :city, :address, :rooms, :number_of_guests, :price_per_night)
  end


end
