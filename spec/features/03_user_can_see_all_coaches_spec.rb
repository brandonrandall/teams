require 'rails_helper'

RSpec.feature 'logged in user' do
  describe "when a user visits '/coaches' path" do
    scenario 'they see a list of all coaches: name and current team' do
      # user = User.create(username: "BB King", password: "b")
      load "#{Rails.root}/db/seeds.rb"
      visit "/coaches"

      expect(current_path).to eq(coaches_path)
      expect(page).to have_content("Tyron")
      expect(page).to have_content("Cleveland Cavaliers")
    end
  end

  describe 'teams have specified columns' do
    scenario 'current team' do
      # tyron_lue = Coach.create(name: "Tyron Lue")
      expect(tyron_lue).to have_attributes(name: "Tyron Lue")
    end
  end
end
