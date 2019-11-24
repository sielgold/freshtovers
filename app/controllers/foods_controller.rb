class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update]

  def index
    @foods = Food.all
  end

  def show
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    @food.save
    redirect_to foods_path
  end

  private

  def set_food
    @food = Food.find(params[:id])
  end

  def food_params
   params.require(:food).permit(:name, :freshness, :location, :description, :price)
  end

end
