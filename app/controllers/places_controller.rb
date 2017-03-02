class PlacesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @places = Place.all.paginate(:page => params[:page], :per_page => 3)
  end

# NEW
  def new 
    @place = Place.new
  end
# CREATE
  def create
      @place = current_user.places.create(place_params)
      if @place.valid?
        redirect_to root_path
      else
        render :new, status: :unprocessable_entity
      end 
  end
# SHOW
  def show
    @place = Place.find(params[:id])
  end
# EDIT 
  def edit
    @place = Place.find(params[:id])
      if @place.user != current_user
        return render text: 'Not Allowed', status: :forbidden
      end
  end
# UP DATE
  def update
    @place = Place.find(params[:id])
      
      if @place.user != current_user
        return render text: 'Not Allowed', status: :forbidden
      end

    @place.update_attributes(place_params)
      if @place.valid?
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end
# DESTROY 
  def destroy
    @place = Place.find(params[:id])
    if @place.user != current_user
        return render text: 'Not Allowed', status: :forbidden
      end

    @place.destroy
    redirect_to root_path
  end

#Yo, don't go down there, its private...
  private

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end

end
