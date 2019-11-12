class ReviewsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show, :set_review]

  def index
    reviews = Review.all 
    render json: reviews
  end

  def show
    render json: @review, status: 200
  end

  def create
    # byebug
    # @review = Review.find(params[:id])
    @review = Review.create(set_review)
    render json: @review

  end
  
  private
  def set_review
    params.require(:review).permit(:content, :rating, :beer_id, :user_id)
  end
end
