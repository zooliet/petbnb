class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    @reservations_by_date = @reservations.group_by {|r| r.from_date.to_date}    
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
