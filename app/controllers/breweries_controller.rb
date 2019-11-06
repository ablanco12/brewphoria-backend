class BreweriesController < ApplicationController
  before_action :set_brewery, only: [:show]
  def index
    breweries = Brewery.all 
    render json: breweries
  end
  def show
    render json: @brewery, status: 200
  end

  def set_brewery
    @brewery = Brewery.find(params[:id])
  end
end
