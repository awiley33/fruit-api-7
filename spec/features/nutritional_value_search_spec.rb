require 'rails_helper'

# User Story 2 - Nutritional Value
RSpec.describe "Nutritional Value Search" do
  before do
    # As a user, 
    # When I am on a search result page "/fruits"
    # after making a successful search,
    visit "/"
    fill_in 'search', with: 'Banana'
    click_button "Search"
  end

  it "has a link to find similar fruits by nutrition" do
    # I see a link that says "Find Similar Fruits by Nutrition Value" 
    expect(page).to have_link("Find Similar Fruits by Nutrition Value")
  end

  it "routes to the 'fruits/nutritional' page" do
    # When I click this link
    click_link("Find Similar Fruits by Nutrition Value")
    
    # I am taken to a "/fruits/nutritional" page
    expect(current_path).to eq("/fruits/nutritional")
  end

  it "displays the names of the fruits of a similar nutritional value" do
    click_link("Find Similar Fruits by Nutrition Value")

    # Where I see the names of fruits that have a similar nutritional value
    expect(page).to have_content("Banana")
    expect(page).to have_content("Passionfruit")
    expect(page).to have_content("Jackfruit")
  end
end