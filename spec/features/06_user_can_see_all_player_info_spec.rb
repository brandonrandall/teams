RSpec.feature 'player info' do
  xdescribe 'when a logged in user visits the players show page' do
    scenario 'they should see the players current coach' do

      user = User.create(username: "BB King", password: "b")
      load "#{Rails.root}/db/seeds.rb"
      visit '/lebron_james'

      expect(page).to have_content("Lebron James")
      expect(page).to have_content("active")
      expect(page).to have_content("Cleveland Cavaliers")
      expect(page).to have_content("Tyron Lue")


    end
  end

  xdescribe 'when a logged in user visits the players show page' do
    scenario 'they should see the players previous coaches' do

      user = User.create(username: "BB King", password: "b")
      load "#{Rails.root}/db/seeds.rb"
      visit '/players'

      expect(page).to have_content("Lebron James")
      expect(page).to have_content("active")
      expect(page).to have_content("Cleveland Cavaliers")


    end
  end

  xdescribe 'when a logged in user visits the players show page' do
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
