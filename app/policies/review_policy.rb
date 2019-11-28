class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      # scope.where(user: user)
    end
  end

  def create?
    true
  end

  def new?
    true # add conditional
  end


end
