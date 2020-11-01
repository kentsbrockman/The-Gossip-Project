class CitiesController < ApplicationController
  def show
    @city = City.find(params[:id])
    @city_posts = @city.users
  end
end
