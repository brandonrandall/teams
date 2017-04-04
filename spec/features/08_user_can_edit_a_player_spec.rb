require 'rails_helper'

# as a user when I visit the player show page
# I can click a link to allow me to edit the player

RSpec.feature 'player editing' do
  describe 'when an authorized user is on the player page' do
    scenario 'they are able to edit players' do

      load "#{Rails.root}/db/seeds.rb"

      brandon = User.first
      lebron = Player.first

      visit user_path(brandon.username)
      expect(current_path).to eq(brandon.id)

      expect(page).to have_content("Welcome")
      expect(page).to have_link("Edit User")

      visit player_path
      expect(page).to have_content(lebron.name)

      click_on "Confirm Edit"
      expect(current_path).to eq(new_coach_path)
    end
  end
end
