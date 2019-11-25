class DashboardsController < ApplicationController
  def dashboard
    @foods =  policy_scope(Food).where(user: current_user).order(created_at: :asc)
    @orders = policy_scope(Order).where(user: current_user).order(created_at: :asc)
    skip_authorization
  end
end
