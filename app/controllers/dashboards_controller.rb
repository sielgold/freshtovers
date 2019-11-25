class DashboardsController < ApplicationController
  def dashboard
    @foods = Food.where(user: current_user)
    @orders = Order.where(user:current_user)
  end
end
