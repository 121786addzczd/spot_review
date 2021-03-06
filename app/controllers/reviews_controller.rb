class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def index
    @training_spot = TrainingSpot.find(params[:training_spot_id])
    @reviews = @training_spot.reviews
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to training_spot_reviews_path(@review.training_spot)
    else
      @training_spot = TrainingSpot.find(params[:id])
      render "training_spots/show"
    end
  end

  private
  def review_params
    params.require(:review).permit(:training_spot_id, :score, :content)
  end
end
