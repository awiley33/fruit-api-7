class FruitsService
  def get_fruit_by_name(name)
    get_url("api/fruit/#{name}")
  end

  def get_fruits_by_nutrition(calories)
    get_url("api/fruit/calories?min=#{calories - 10}&max=#{calories + 10}")
  end

  private
  def conn
    Faraday.new(url: "https://www.fruityvice.com")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end