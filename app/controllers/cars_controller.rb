class CarsController < ApplicationController
  before_action :set_car, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @cars = policy_scope(Car)
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    current_user.owner = true
    authorize @car
    if @car.save
      redirect_to car_path(@car)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @car = Car.new
    authorize @car
  end

  def show
    @review = Review.new(params[:car_id])
    authorize @car
  end

  def edit
    authorize @car
  end

  def update
    if @car.update(car_params)
      redirect_to car_path(@car)
    authorize @car
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @car.destroy
    authorize @car
    redirect_to cars_path, status: :see_other
  end

private

  def car_params
    params.require(:car).permit(:brand, :description, :model, :year, :image_url)
  end

  def set_car
    @car = Car.find(params[:id])
  end
end
