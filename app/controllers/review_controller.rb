class ReviewController < ApplicationController

  def new
    @review = Review.new
  end

  def Create
    @review = Review.new(review_params)
    @review.save
    redirect_to restaurant_path
  end

  private

  def review_params
    params.require(:reviews).permit(:rating, :content)
  end
end
