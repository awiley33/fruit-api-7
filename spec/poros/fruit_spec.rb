require 'rails_helper'

RSpec.describe Fruit do
  it "exists and has attributes" do
    params = {
      "name": "Banana",
      "id": 1,
      "family": "Musaceae",
      "order": "Zingiberales",
      "genus": "Musa",
      "nutritions": {
        "calories": 96,
        "fat": 0.2,
        "sugar": 17.2,
        "carbohydrates": 22.0,
        "protein": 1.0
      }
    }

    fruit = Fruit.new(params)

    expect(fruit).to be_a Fruit
    expect(fruit.name).to eq("Banana")
    expect(fruit.family).to eq("Musaceae")
    expect(fruit.order).to eq("Zingiberales")
    expect(fruit.genus).to eq("Musa")
    expect(fruit.calories).to eq(96)
    expect(fruit.fat).to eq(0.2)
    expect(fruit.sugar).to eq(17.2)
    expect(fruit.carbohydrates).to eq(22.0)
    expect(fruit.protein).to eq(1.0)
  end
end