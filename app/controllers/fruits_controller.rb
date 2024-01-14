class FruitsController < ApplicationController

  def index
    @fruit = SearchFacade.new.fruit_by_name(params[:search])
  end

  def show
    # require 'pry'; binding.pry
    @fruits = SearchFacade.new.fruits_by_nutrition((fruit_params[:calories]).to_i)
  end

  private

  def fruit_params
    params.permit(:name, :family, :order, :genus, :calories, :sugar, :fat, :carbohydrates, :protein)
  end
end