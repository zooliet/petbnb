class ReservationsController < ApplicationController
  def index
    @pet_house    = PetHouse.find(params[:pet_house_id])
    @reservations = @pet_house.reservations
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  def show
  end

  def new
    @pet_house   = PetHouse.find(params[:pet_house_id])
    @reservation = @pet_house.reservations.build
  end

  def create
    @reservation = Reservation.new(params[:reservation])
    @reservation.customer_id = current_user.id
    if @reservation.save
      redirect_to reservations_path(pet_house_id: params[:reservation][:pet_house_id])
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
