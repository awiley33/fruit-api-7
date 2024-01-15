class SearchFacade
  def fruit_by_name(name)
    request = service.get_fruit_by_name(name)
    @fruit = Fruit.new(request)
  end

  def fruits_by_nutrition(calories)
    request = service.get_fruits_by_nutrition(calories)
    @fruits = request.map do |fruit|
      Fruit.new(fruit)
    end
  end

  private
  def service
    service = FruitsService.new
  end
end