class ListsController < ApplicationController
  def index
    @lists = List.all



    end

  def new
  @list = List.new
  end
  def create
    list = Restaurant.new(restaurant_params)
    list.save
    redirect_to lists_path
  end
end
