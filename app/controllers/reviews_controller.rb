class ReviewsController < ApplicationController
  skip_before_action :authorized, only: [:index, :create, :show, :set_review]

  def index
    reviews = Review.all 
    render json: reviews
  end

  def show
    @review = Review.find(params[:id])
    render json: @review.to_json(include: :users), status: 200
  end

  def create
    
    # @review = Review.find(params[:id])
    @review = Review.create(set_review)
    render json: @review

  end
  
  private
  def set_review
    params.require(:review).permit(:content, :rating, :beer_id, :user_id, :username)
  end
end
