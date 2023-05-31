class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
    @cars = Car.where(user_id: current_user)
    authorize @user
  end

  def show_rentals
    @user = User.find(current_user.id)
    @cars = Car.where(user_id: current_user)
    authorize @user
  end
end
