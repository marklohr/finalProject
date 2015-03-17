class RestaurantsController < ApplicationController
  
  def index
    @restaurants = Restaurant.all
    respond_to do |format|
      format.json { render json: @restaurants.to_json }
    end
  end
  
  def show
    set_restaurant
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new restaurant_params
    if @restaurant.save
      respond_to do |format|
        format.json { render json: @restaurant.to_json }
    end
  else
    respond_to do |format|
      format.json { render json: @restaurant.errors.full_messages, status: 422 }
    end
  end
end

  def edit
    @restaurant = Restaurant.find params[:id]
  end

  def update
    @restaurant = Restaurant.find params[:id]
    if @restaurant.update_attributes restaurant_params
      respond_to do |format|
        format.json { render json: @restaurant.to_json }
      end
    else
      respond_to do |format|
        format.json { render json: @restaurant.errors.full_messages, status: 422 }
      end
    end
  end


  def destroy
    @restaurant = Restaurant.find params[:id]
    @restaurant.destroy
    respond_to do |format|
      format.json { render nothing: true }
    end
  end


  private

  def set_restaurant
    @restaurant = Restaurant.find params[:id]
  end
  
  def restaurant_params
    params.require(:restaurant).permit(
      :name,
      :address,
      :city,
      :state,
      :zip,
      :phone,
      :website,
      :geocode
      )


  end
end
