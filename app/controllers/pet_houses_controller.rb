class PetHousesController < ApplicationController
  
  
  def index
    todate = params[:todate]
    fromdate = params[:fromdate]
  
    @pethouses = PetHouse.search(params)

  end

  def show
    @pethouse = PetHouse.find(params[:id])
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
