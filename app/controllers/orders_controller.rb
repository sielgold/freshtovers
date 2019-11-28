class OrdersController < ApplicationController
  def create
    @order = Order.new
    @food = Food.find(params[:food_id])
    @order.food = @food
    authorize @order
    @order.user = current_user
    if @order.save
      redirect_to food_order_path(id: @order.id)
    else
      redirect_to foods_path, notice: 'there was a problem with your order'
    end
  end

  def show
    @order = Order.find(params[:id])
    @food = Food.find(params[:food_id])
    @review = Review.new(order_id: @order.id)
    authorize @food
    authorize @order
  end

  def delete
  end
end
