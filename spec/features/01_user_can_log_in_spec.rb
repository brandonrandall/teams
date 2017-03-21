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

  describe "when a user visits '/players'" do
    scenario 'they see a list of all player first name and last name' do
      user = User.create(username: "BB King", password: "b")

      cavaliers = Team.create!(state_or_province: "Ohio",
                              city: "Cleveland", name: "Cleveland Cavaliers", slug: "cleveland-cavaliers")
      lebron_james = cavaliers.players.create(name: "Lebron James", status: "active")
      kyrie_irving = cavaliers.players.create(name: "Kyrie Irving", status: "active")

      visit players_path

      expect(page).to have_content("Lebron James")
      expect(page).to have_content("active")
      expect(page).to_not have_content("Kyrie Erving")
      expect(page).to_not have_content("retired")

    end
  end
end
