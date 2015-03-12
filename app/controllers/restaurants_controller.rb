class RestaurantsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
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
