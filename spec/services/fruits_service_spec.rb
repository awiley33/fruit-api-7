require 'rails_helper'

RSpec.describe FruitsService do
  it "can get fruit by name" do
    search = FruitsService.new.get_fruit_by_name("banana")
    expect(search).to be_a Hash

    expect(search).to have_key :name
    expect(search[:name]).to be_a String
    
    expect(search).to have_key :id
    expect(search[:id]).to be_an Integer

    expect(search).to have_key :family
    expect(search[:family]).to be_a String
    
    expect(search).to have_key :order
    expect(search[:order]).to be_a String
    
    expect(search).to have_key :genus
    expect(search[:genus]).to be_a String
    
    expect(search).to have_key :nutritions
    expect(search[:nutritions]).to be_a Hash

    nutritions = search[:nutritions]

    expect(nutritions).to have_key :calories
    expect(nutritions[:calories]).to be_an Integer

    expect(nutritions).to have_key :fat
    expect(nutritions[:fat]).to be_a Float

    expect(nutritions).to have_key :sugar
    expect(nutritions[:sugar]).to be_a Float

    expect(nutritions).to have_key :carbohydrates
    expect(nutritions[:carbohydrates]).to be_a Float

    expect(nutritions).to have_key :protein
    expect(nutritions[:protein]).to be_a Float
  end

  it "can get fruits by nutrition" do
    search = FruitsService.new.get_fruits_by_nutrition(70)
    expect(search).to be_an Array
    expect(search.count).to eq(10)

    search.each do |fruit|
      expect(fruit).to be_a Hash

      expect(fruit).to have_key :name
      expect(fruit[:name]).to be_a String
      
      expect(fruit).to have_key :id
      expect(fruit[:id]).to be_an Integer

      expect(fruit).to have_key :family
      expect(fruit[:family]).to be_a String
      
      expect(fruit).to have_key :order
      expect(fruit[:order]).to be_a String
      
      expect(fruit).to have_key :genus
      expect(fruit[:genus]).to be_a String
      
      expect(fruit).to have_key :nutritions
      expect(fruit[:nutritions]).to be_a Hash

      expect(fruit[:nutritions]).to have_key :calories
      expect(fruit[:nutritions][:calories]).to be_an Integer

      expect(fruit[:nutritions]).to have_key :fat
      expect(fruit[:nutritions][:fat]).to be_a Float

      expect(fruit[:nutritions]).to have_key :sugar
      expect(fruit[:nutritions][:sugar]).to be_a Float

      expect(fruit[:nutritions]).to have_key :carbohydrates
      expect(fruit[:nutritions][:carbohydrates]).to be_a Float

      expect(fruit[:nutritions]).to have_key :protein
      expect(fruit[:nutritions][:protein]).to be_a Float
    end
  end
end