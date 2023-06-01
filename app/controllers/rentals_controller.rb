class RentalsController < ApplicationController
  before_action :set_car, only: %i[new create show update]

  def new
    @rental = Rental.new
    authorize @rental
  end

  def create
    @car.rentals.destroy_all if @car.rentals.any?
    @rental = Rental.new(rental_params)
    @rental.car = @car
    @rental.user = current_user
    diff = (@rental.end_date - @rental.start_date).to_i
    total_price_t = diff * @rental.car.price
    @rental.total_price = total_price_t
    authorize @rental
    if @rental.save
      @car.rented = true
      @car.save
      redirect_to  car_rental_path(@car, @rental)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @rental = Rental.find(params[:id])
    authorize @rental
  end

  def update
    @rental = Rental.find(params[:id])
    authorize @rental
    if @rental.update!(confirmation: params[:confirmation])
      redirect_to my_rentals_path(current_user)
    else
      render :show, status: :unprocessable_entity
    end
  end

  def show_rentals
    @user = current_user
    @rental = Rental.where(user_id: @user)
    authorize @rental
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end

  def set_car
    @car = Car.find(params[:car_id])
  end
end
