require 'rails_helper'

RSpec.feature 'home page visitation'
  describe 'when a visitor visits the home page' do
    scenario 'they can see all the teams' do

      spurs = Team.create(city: "San Antonio", name: "Spurs")
      celtics = Team.create(city: "Boston", name: "Celtics")

      visit root_path
      expect(page).to have_content("Spurs")
      expect(page).to have_content("Celtics")
    end

    describe 'when a visitor visits the home page' do
      scenario 'a visitor will see login, signup or admin login' do

        visit root_path
        click_on "Sign Up"

        user = User.count

        expect(current_path).to eq(new_user_path)
        expect(page).to have_content("Create New Account")

        fill_in "user[username]", with: "BB King"
        fill_in "user[password]", with: "b"
        fill_in "user[confirmation_password]", with: "b"
        click_on "Sign Up"

        # expect(current_path).to eq(user_path())
        expect(page).to have_content("BB King")
        expect(User.count).to eq(user + 1)
      end
    end

    xdescribe "when a user visits '/players'" do
      scenario 'they see a list of all player first name and last name' do
        user = User.create(username: "BB King", password: "b")
        michael_jordan = Player.create(name: "Michael Jordan")
        tim_duncan = Player.create(name: "Tim Duncan")

        visit players_path

        expect(page).to have_content("Michael Jordan")
        expect(page).to have_content("Tim Duncan")

      end
    end
  end
