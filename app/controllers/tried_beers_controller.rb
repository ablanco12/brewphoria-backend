class TriedBeersController < ApplicationController
  skip_before_action :authorized, only: [:index, :show, :create, :set_tried_beers]
  def index
    triedBeers = TriedBeer.all 
    render json: triedBeers
  end

  def show
    render json: @tried_beer, status: 200
  end

  def create
    @tried_beer = TriedBeer.create(user_id: params[:tried_beer][:user_id], beer_id: params[:tried_beer][:beer_id])
    render json: @tried_beer
  end

  private
  def set_tried_beers
    @tried_beer = TriedBeer.find(params[:id])
  end
end
