class ReviewsController < ApplicationController
  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @order = Order.find(params[:order_id])
    @review.order = @order
    authorize @review
    @review.save
  end

  private

  def review_params
    params.require(:review).permit(:rating)
  end
end
