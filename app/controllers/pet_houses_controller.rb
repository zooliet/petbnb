class PetHousesController < ApplicationController  
  def index
    # @pethouses = PetHouse.search(params)
    @pet_houses = PetHouse.find_it(params[:search])
    @search = Search.new(params[:search])
  end

  def show
    @pet_house = PetHouse.find(params[:id])
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
