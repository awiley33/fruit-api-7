require 'rails_helper'

RSpec.describe "Nutritional Value Search" do
  before do
    visit "/"
    fill_in 'search', with: 'Banana'
    click_button "Search"
  end

  
end

# ### User Story 2 - Nutritional Value

# ```
# As a user, 
# When I am on a search result page "/fruits"
# after making a successful search, 
# I see a link that says "Find Similar Fruits by Nutrition Value" 
# When I click this link
# I am taken to a "/fruits/nutritional" page
# Where I see the names of fruits that have a similar nutritional value

# # Hint: choose a specific nutritional key (e.g. "calories" or "fat" or "sugar"), and use the min/max API endpoints
# ```

# ### User Story 3 - Clickable Names

# ```
# As a user, 
# When I use the Nutritional Value search 
# and I see the names of fruits that have similar nutritional value, 
# I can click on the names of each fruit
# and I am taken to the "/fruits" page
# where I see that specific fruit's information similar to the original search: 
#  - name
#  - family
#  - order
#  - genus
#  - nutrition value, organized as: 
#    "Calories: x
#    Fat: x
#    Sugar: x
#    Carbohydrates: x
#    Protein: x
#    "
# ```
