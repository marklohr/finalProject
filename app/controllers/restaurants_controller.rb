class RestaurantsController < ApplicationController
  
  def index
    @restaurants = Restaurant.all
  end

  def show
    set_restaurant
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create restaurant_params
    if @restaurant.save
      flash[:notice] = 'Restaurant data was saved successfully.'
      redirect_to restaurants_path
    else
      flash[:error] = 'Restaurant data was NOT saved successfully.'
      render :new
    end
  end

  def edit
    @restaurant = Restaurant.find params[:id]
  end

  def update
    @restaurant = Restaurant.find params[:id]
    @restaurant.update_attributes restaurant_params
    redirect_to restaurants_path
  end

  def destroy
    @restaurant = Restaurant.find params[:id]
    @restaurant.delete
    redirect_to restaurants_path
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
      :website
      )


  end
end
