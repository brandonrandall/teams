require 'rails_helper'

load_up = load "#{Rails.root}/db/seeds.rb"

xRSpec.feature 'add a coach' do
  describe 'as a user when I visit the player new page' do
    it 'they see a dropdown that contains all coaches names' do

      load_up
      admin = User.create(name: "Michael",
                          username: "Jordan",
                          password: "password",
                          role: 1)

      allow_any_instance_of(ApplicationController)
                      .to receive(:current_user)
                      .and_return(admin)

      visit user_path(admin.id)

      select "doc rivers", from: "coaches"

      expect(page).to have_select("coaches", options: ['doc rivers', 'greg popovich'])
      expect(page).not_to have_select("coaches", options: 'stanky leg')
    end
  end
end
