require 'rails_helper'

RSpec.feature 'add a coach' do
  describe 'as a user with valid credentials visits the coaches page' do
    it 'they see an edit coaches link' do
    # it 'they see a dropdown that contains all coaches names' do
    load "#{Rails.root}/db/seeds.rb"

    brandon = User.first

      visit root_path
      click_on "Log In"
      fill_in "session[username]", with: "BB KIng"
      fill_in "session[password]", with: "b"

      click_on "Log In"

      expect(page).to have_content("Log In")
      expect(page).to have_content("Username")
      expect(page).to have_content("Password")
      # select "doc rivers", from: "coaches"
      # expect(page).to have_select("coaches", options: ['doc rivers', 'greg popovich'])
      # expect(page).not_to have_select("coaches", options: 'stanky leg')
    end
  end

  describe 'when a user is on the welcome page' do
    scenario 'they see options to edit teams, players and coaches' do

      load "#{Rails.root}/db/seeds.rb"

      brandon = User.first

      # binding.pry
      visit user_path(brandon.username)
      expect(current_path).to eq(brandon.id)

      expect(page).to have_content("Welcome")
      expect(page).to have_link("Create User")
      expect(page).to have_link("Edit Coaches")

      visit coaches_path
      expect(page).to have_content("Create New Coach")
      click_on "Create New Coach"
      expect(current_path).to eq(new_coach_path)
    end
  end
end
