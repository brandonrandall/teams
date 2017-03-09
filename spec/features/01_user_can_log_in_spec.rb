require 'rails_helper'

RSpec.feature "log in" do
  describe "with valid credentials" do
    scenario "a user can log into their account" do
      user = User.create(username: "BB King", password: "b")

      visit root_path
      click_on "Log In"

      expect(current_path).to eq(login_path)
      fill_in "session[username]", with: user.username
      fill_in "session[password]", with: user.password
      click_on "Log In"

      expect(current_path).to eq(user_path(user.id))
      #need to make within work
      # within(h1.greeting) do
      #   expect(page).to have_content("Welcome BB King")
      # end
    end
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
