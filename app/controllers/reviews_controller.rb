class ReviewsController < ApplicationController
  
  def index
    reviews = Review.all 
    render json: reviews
  end
  def show
    render json: @review, status: 200
  end
  def create
    @review = Review.create(params[:id])
  end
  
end
