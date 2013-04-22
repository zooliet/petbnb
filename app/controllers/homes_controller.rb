class HomesController < ApplicationController
  def index
    @search = Search.new
  end

  def show
  end
end
