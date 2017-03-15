require 'rails_helper'

RSpec.feature 'logged in user team info' do
  describe 'when a logged in user visits a specific team page' do
    scenario 'they see city, state, coach and players on the team' do
      user = User.create(username: "BB King", password: "b")
      load "#{Rails.root}/db/seeds.rb"

      visit '/teams'
      expect(page).to have_link("Denver Nuggets")
      expect(current_path).to eq(teams_path)
      click_on "Denver Nuggets"

      save_and_open_page
      # expect(current_path).to eq(team_path(Team.last.id))
      expect(page).to have_content("Denver Nuggets")
      expect(page).to have_content("Colorado")
      expect(page).to have_content("Jamal Murray")
      expect(page).to have_content("Nikola Jokic")
      expect(page).to have_content("Mike Malone")

    end
  end
  # expect(current_path).to eq(team_path(Team.last.id))
end
