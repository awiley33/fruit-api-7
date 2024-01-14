require 'rails_helper'

RSpec.describe "Basic Search" do
  before do
    # As a user,
    # When I visit the root path ("/"), 
    visit "/"
  end

  it "has a form with a search box for fruit and a button" do
    # I see a form with a search box for fruit and a button. 
    expect(page).to have_field("search")
    expect(page).to have_button("Search")
  end

  context "successful search" do
    before do
      # When I enter the name of a fruit and click "Search"
      fill_in 'search', with: 'Banana'
      click_button "Search"
    end

    it "routes to the '/fruits' page" do
      # I am taken to the "/fruits" page
      expect(current_path).to eq(fruits_path)
    end
  
    it "displays taxonomic information about that fruit" do
      # And I see information about that fruit, including
      #  - name
      #  - family
      #  - order
      #  - genus
      expect(page).to have_content("Banana")
      expect(page).to have_content("Family: Musaceae")
      expect(page).to have_content("Order: Zingiberales")
      expect(page).to have_content("Genus: Musa")
    end

    it "displays nutritional information about that fruit" do
      #  - nutrition value, organized as: 
      #    "Calories: x
      #    Fat: x
      #    Sugar: x
      #    Carbohydrates: x
      #    Protein: x
      #    "
      expect(page).to have_content("Calories: 96 kcal")
      expect(page).to have_content("Fat: 0.2 g")
      expect(page).to have_content("Sugar: 17.2 g")
      expect(page).to have_content("Carbohydrates: 22.0 g")
      expect(page).to have_content("Protein: 1.0 g")
    end
  end

  context "unsuccessful search" do
    before do
      fill_in 'search', with: 'Taco'
      click_button "Search"
    end
  end
end