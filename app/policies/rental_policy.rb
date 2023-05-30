class RentalPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      user.owner? ? scope.all : scope.where(user: user)
    end
  end

  def new?
    true
  end

  def create?
    true
  end
end
