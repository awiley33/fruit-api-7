require 'rails_helper'

RSpec.describe SearchFacade do
  it "can search for fruit by name" do
    fruit = SearchFacade.new.fruit_by_name("banana")

    expect(fruit).to be_a Fruit
    expect(fruit.family).to be_a String
    expect(fruit.order).to be_a String
    expect(fruit.genus).to be_a String
    expect(fruit.calories).to be_an Integer
    expect(fruit.fat).to be_a Float
    expect(fruit.sugar).to be_a Float
    expect(fruit.carbohydrates).to be_a Float
    expect(fruit.protein).to be_a Float
  end

  it "can search for fruits by calorie count" do
    fruits = SearchFacade.new.fruits_by_nutrition(70)
    expect(fruits.count).to eq(10)

    fruit = fruits[0]
    expect(fruit).to be_a Fruit
    expect(fruit.family).to be_a String
    expect(fruit.order).to be_a String
    expect(fruit.genus).to be_a String
    expect(fruit.calories).to be_an Integer
    expect(fruit.fat).to be_a Float
    expect(fruit.sugar).to be_a Float
    expect(fruit.carbohydrates).to be_a Float
    expect(fruit.protein).to be_a Float
  end
end