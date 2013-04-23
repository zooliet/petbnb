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
    @pet_house = PetHouse.new()
  end

  def create
    @pet_house = current_user.pet_houses.build(params[:pet_house])
    if @pet_house.save
      redirect_to pet_house_path(@pet_house)
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
