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

  def show?
    true
  end

  def update?
    true
  end

  def show_rentals
    true
  end
end
