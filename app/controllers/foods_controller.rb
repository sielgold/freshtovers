class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]

  def index
    @foods = policy_scope(Food).order(created_at: :asc)
  end

  def show
    @food = Food.find(params[:id])
  end

  def edit
  end

  def new
    @food = Food.new
    authorize @food
  end

  def create
    @food = Food.new(food_params)
    @food.user = current_user
    authorize @food

    if @food.save
      redirect_to @food
    else
      render :new
    end
  end

  def update
    if @food.update(food_params)
      redirect_to @food, notice: 'food has been successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @food.destroy
    redirect_to foods_path, notice: 'food has been successfully deleted'
  end

  private

  def set_food
    @food = Food.find(params[:id])
    authorize @food
  end

  def food_params
   params.require(:food).permit(:name, :freshness, :location, :description, :price)
  end
end
