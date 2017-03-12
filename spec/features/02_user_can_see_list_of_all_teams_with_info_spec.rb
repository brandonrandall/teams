require 'rails_helper'



RSpec.feature 'logged in user' do


  describe "when a user visits '/teams' path" do
    scenario 'they see a list of all teams: state, city and team name' do
      user = User.create(username: "BB King", password: "b")
      load "#{Rails.root}/db/seeds.rb"
      visit "/teams"

      save_and_open_page
      expect(current_path).to eq(teams_path)
      expect(page).to have_content("Ohio")
      expect(page).to have_content("Cleveland")
      expect(page).to have_content("Cleveland Cavaliers")

    end
  end

  describe 'teams have specified columns' do
    scenario 'state or province' do
      raptors = Team.create(state_or_province: "Ontario", city: "Toronto", name: "Toronto Raptors")
      expect(raptors).to have_attributes(state_or_province: "Ontario", city: "Toronto", name: "Toronto Raptors")
    end
  end
end
