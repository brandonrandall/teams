RSpec.feature 'player info' do
  describe 'when a logged in user visits the players show page' do
    scenario 'they should see the players current coach' do

      user = User.create(username: "BB King", password: "b")
      load "#{Rails.root}/db/seeds.rb"

      lebron = Player.where(name: "Lebron James").first
      visit player_path(lebron.slug)

      expect(page).to have_content("Lebron James")
      expect(page).to have_content("active")
      expect(page).to have_content("Cleveland Cavaliers")
      expect(page).to have_content("Tyron Lue")


    end
  end

  describe 'when a logged in user visits the players show page' do
    scenario 'they should see the players previous coaches' do

      user = User.create(username: "BB King", password: "b")
      load "#{Rails.root}/db/seeds.rb"
      visit '/players/lebron-james'

      expect(page).to have_content("Lebron James")
      expect(page).to have_content("active")
      expect(page).to have_content("Tyron Lue")
      expect(page).to have_content("Cleveland Cavaliers")


    end
  end

  describe 'when a logged in user visits the players show page' do
      scenario 'they should see the players previous teams' do

        user = User.create(username: "BB King", password: "b")
        load "#{Rails.root}/db/seeds.rb"
        visit '/players'

        expect(page).to have_content("Lebron James")
        expect(page).to have_content("active")
        expect(page).to have_content("Cleveland Cavaliers")
    end
  end
end
