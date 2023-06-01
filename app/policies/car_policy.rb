class CarPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.rented_cars_not_confirmed
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
