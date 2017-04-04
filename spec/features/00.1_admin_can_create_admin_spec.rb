require 'rails_helper'

RSpec.feature 'home page visitation' do
  describe 'when an admin visits the home page' do
    scenario "they can see create and delete user" do
      admin = User.create(name: "Ryan",
                          email: "rj@gweb.com",
                          username: "RJ",
                          password: "password",
                          role: 0)

      allow_any_instance_of(ApplicationController)
                      .to receive(:current_user)
                      .and_return(admin)

      visit user_path(User.last.id)
      click_on "Create User"

      users = User.where(role: 1).count
      expect(current_path).to eq(new_user_path(User.last.id))


      fill_in "user[name]", with: "Ryan"
      fill_in "user[username]", with: "RJ"
      fill_in "user[password]", with: "password"
      fill_in "user[confirmation_password]", with: "password"
      click_on "Create User"
      expect(current_path).to eq(user_path(User.last.id))
      expect(User.where(role: 1).count).to eq(users + 1)
      # expect(page).to have_content("You Have Created RJ!")
    end
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
