class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    Flat.create!(flat_params)
    redirect_to flats_path
  end

  def show
    @flat = Flat.find_by_id(params[:id])
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

end
