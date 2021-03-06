class TrainingSpotsController < ApplicationController
  def index
    @training_spots = TrainingSpot.all
  end

  def show
    @training_spot = TrainingSpot.find(params[:id])
    @review = Review.new
  end
end
