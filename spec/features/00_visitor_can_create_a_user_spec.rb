require 'rails_helper'

RSpec.feature 'home page visitation'
  describe 'when a visitor visits the home page' do
    #want to change to they can only see the first place team in the league
    scenario "they can see all the teams' states" do
      load "#{Rails.root}/db/seeds.rb"
      spurs = Team.create(state_or_province: "Texas", city: "San Antonio", name: "San Antonio Spurs", slug: "san-antonio-spurs")
      celtics = Team.create(state_or_province: "Massachusetts", city: "Boston", name: "Boston Celtics", slug: "boston-celtics")

      visit root_path
      expect(page).to have_content("Texas")
      expect(page).to have_content("Massachusetts")
    end

    describe 'when a visitor visits the home page' do
      scenario 'a visitor will see login and signup' do


        visit root_path
        click_on "Sign Up"

        user = User.count

        expect(current_path).to eq(new_user_path)
        expect(page).to have_content("Create New Account")

        fill_in "user[username]", with: "BB King"
        fill_in "user[password]", with: "b"
        fill_in "user[confirmation_password]", with: "b"
        click_on "Sign Up"

        expect(current_path).to eq(user_path(User.last.id))
        expect(page).to have_content("BB King")

        expect(User.count).to eq(user + 1)
      end
    end
  end
