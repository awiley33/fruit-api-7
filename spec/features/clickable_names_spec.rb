require 'rails_helper'

# User Story 3 - Clickable Names
RSpec.describe "Clickable Names" do
  before do
    # As a user, 
    # When I use the Nutritional Value search
    visit "/"
    fill_in 'search', with: 'Banana'
    click_button "Search"
    click_link("Find Similar Fruits by Nutrition Value")
  end

  it "exists" do
    # and I see the names of fruits that have similar nutritional value, 
    # I can click on the names of each fruit
    expect(page).to have_link("Banana")
    expect(page).to have_link("Passionfruit")
    expect(page).to have_link("Jackfruit")
  end

  it "routes to that fruit's information page" do
    click_link("Passionfruit")

    # and I am taken to the "/fruits" page
    expect(current_path).to eq("/fruits")
  end

  it "displays the fruit details, just like a basic search" do
    click_link("Passionfruit")

    # where I see that specific fruit's information similar to the original search: 
    #  - name
    #  - family
    #  - order
    #  - genus
    #  - nutrition value, organized as: 
    #    Calories: x
    #    Fat: x
    #    Sugar: x
    #    Carbohydrates: x
    #    Protein: x
    expect(page).to have_content("Passionfruit")
    expect(page).to have_content("Family: Passifloraceae")
    expect(page).to have_content("Order: Malpighiales")
    expect(page).to have_content("Genus: Passiflora")
    expect(page).to have_content("Calories: 97 kcal")
    expect(page).to have_content("Fat: 0.7 g")
    expect(page).to have_content("Sugar: 11.2 g")
    expect(page).to have_content("Carbohydrates: 22.4 g")
    expect(page).to have_content("Protein: 2.2 g")
  end
end