class CarsController < ApplicationController
  before_action :set_car, only: %i[show edit update destroy]

  def index
    @cars = Car.all
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to car_path(@car)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @car = Car.new
  end

  def show
    # @review = Review.new(params[:car_id]) checar???
  end

  def edit
  end

  def update
    if @car.update(car_params)
      redirect_to car_path(@car)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @car.destroy
    redirect_to car_path(@car), status: :see_other
  end

  private

  def car_params
    params.require(:car).permit(:brand, :description, :model, :year)
  end

  def set_car
    @car = Car.find(params[:id])
  end
end
