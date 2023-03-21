class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end

  def new
    @flat = FLat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if flat.save
      redirect_to flat_path(@flat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:name, )
  end




  
end
