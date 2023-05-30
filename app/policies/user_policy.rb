class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
      # If users can only see their restaurants
    end
  end

  def show?
    true
  end
end
