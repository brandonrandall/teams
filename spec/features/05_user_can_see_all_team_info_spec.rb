require 'rails_helper'


load_up = load "#{Rails.root}/db/seeds.rb"

RSpec.feature 'logged in user team info' do
  describe 'when a logged in user visits a specific team page' do
    scenario 'they see city, state, coach and players on the team' do
      user = User.create(username: "BB King", password: "b")
      load_up
      nuggets = Team.where(name: "Denver Nuggets")

      visit '/teams'
      expect(page).to have_link("Denver Nuggets")
      expect(current_path).to eq(teams_path)
      click_on "Denver Nuggets"

      expect(page).to have_content("Denver Nuggets")
      expect(page).to have_content("Colorado")
      expect(page).to have_content("Jamal Murray")
      expect(page).to have_content("Nikola Jokic")
      expect(page).to have_content("Mike Malone")

    end
  end

  describe 'when a logged in user visits a specific team page' do
    scenario 'they are prompted to a route with that specific team name' do
      user = User.create(username: "BB King", password: "b")
      load "#{Rails.root}/db/seeds.rb"
      visit '/teams'
      nuggets = Team.where(name: "Denver Nuggets")
      expect(page).to have_link("Denver Nuggets")
      expect(current_path).to eq(teams_path)
      click_on "Denver Nuggets"

      expect(current_path).to eq("/teams/denver-nuggets")

      expect(page).to have_content("Denver Nuggets")
      expect(page).to have_content("Colorado")
      expect(page).to have_content("Jamal Murray")
      expect(page).to have_content("Nikola Jokic")
      expect(page).to have_content("Mike Malone")

    end
  end
end
