require 'rails_helper'

# As a user when I visit a players show page
# I should see the players first and last name
# And I should see the players current status 'retired' or 'active'
# And I should see the players current team



RSpec.feature 'player stats' do
  describe 'when a logged in user visits the players show page' do
    scenario 'they should see first and last name, status and current team' do

      # user = User.create(username: "BB King", password: "b")
      load "#{Rails.root}/db/seeds.rb"
      visit '/players'

      expect(page).to have_content("Lebron James")
      expect(page).to have_content("active")
      expect(page).to have_content("Cleveland Cavaliers")
    end
  end

  describe 'when a user logs in with valid credentials' do
    scenario 'they can click on a edit player button' do

    end
  end
end
