class BeersController < ApplicationController
  before_action :set_beer, only: [:show]
  skip_before_action :authorized, only: [:index, :show, :set_beer]

  def index
    beers = Beer.all 
    render json: beers
  end
  def show
    @beer = Beer.find(params[:id])
    render json: @beer.as_json(include: :reviews), status: 200
  end
  def set_beer
    @beer = Beer.find(params[:id])
  end
end
