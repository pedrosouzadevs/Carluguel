class RentalsController < ApplicationController
  before_action :set_car, only: %i[new create]

  def new
    @rental = Rental.new
    authorize @rental
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.car = @car
    @rental.user = current_user
    @rental.total_price = total_price
    authorize @rental
    if @rental.save
      @car.rented = true
      @car.save
      redirect_to car_path(@car)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end

  def set_car
    @car = Car.find(params[:car_id])
  end

  def total_price
    diff = (@rental.end_date - @rental.start_date).to_i
    diff * @rental.car.price
  end
end
