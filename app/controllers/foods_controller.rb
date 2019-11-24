class FoodsController < ApplicationController
  def show
    @food = Food.find(params[:id])
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(params[:id])
    @food.save
    redirect_to foods_path
  end
end
