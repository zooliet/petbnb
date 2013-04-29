class ReservationsController < ApplicationController
  def index
      @pet_house = PetHouse.find(params[:pet_house_id])
      @reservations = @pet_house.reservations
      @date = params[:date] ? Date.parse(params[:date]) : Date.today
      @bookings = @reservations.map do |reservation|
        (reservation.from_date.to_date..reservation.to_date.to_date).to_a
      end.flatten
  end

  def show
  end

  def new
      @pet_house =PetHouse.find(params[:pet_house_id])
      @reservation = @pet_house.reservations.build
      
  end

  def create
    @reservation = current_user.reservations.build( params[:reservation])
    @reservation.save
    redirect_to reservations_path(:pet_house_id=> @reservation.pet_house_id)
    
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
