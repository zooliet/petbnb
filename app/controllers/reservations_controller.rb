class ReservationsController < ApplicationController
  def index
    @pet_house = PetHouse.find(params[:pet_house_id])
    # @reservations = @pet_house.reservations
    @reservations = Reservation.all
    # @reservations_by_date = @reservations.group_by {|r| r.from_date.to_date}    
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  def show
  end

  def new
    @pet_house = PetHouse.find(params[:pet_house_id])
    @reservation = @pet_house.reservations.build
  end

  def create
    @reservation = current_user.reservations.build(params[:reservation])
    @reservation.save
    redirect_to reservations_path(pet_house_id: @reservation.pet_house.id)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
