class PlacesController < ApplicationController
  def index
    @places = Place.all.paginate(:page => params[:page], :per_page => 3)
  end


  def new 
    @place = Place.new
  end

  def create
      Place.create(place_params)
      redirect_to root_path
  end
#Yo, don't go down there, its private...
  private

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end

end
