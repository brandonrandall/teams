require 'rails_helper'

# As a user when I visit a players show page
# I should see the players first and last name
# And I should see the players current status 'retired' or 'active'
# And I should see the players current team

load_up = load "#{Rails.root}/db/seeds.rb"

RSpec.feature 'player stats' do
  describe 'when a logged in user visits the players show page' do
    scenario 'they should see first and last name, status and current team' do

      user = User.create(username: "BB King", password: "b")
      load_up
      visit '/players'

      expect(page).to have_content("Lebron James")
      expect(page).to have_content("active")
      expect(page).to have_content("Cleveland Cavaliers")


    end
  end
end
