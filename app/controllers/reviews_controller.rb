class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @order = Order.find(params[:order_id])
    @review.order = @order
    authorize @review
    @review.save
    redirect_to food_order_path(food_id: @order.food_id, id: @order.id)
  end

  private

  def review_params
    params.require(:review).permit(:rating)
  end
end
