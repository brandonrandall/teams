# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

###### maybe do a PLAYOFF RACE tracker for the top 8 teams in each conference!!!!!!!

cavaliers = Team.create(state_or_province: "Ohio", city: "Cleveland", name: "Cleveland Cavaliers")
celtics = Team.create(state_or_province: "Massachusetts", city: "Boston", name: "Boston Celtics")
wizards = Team.create(state_or_province: "Maryland", city: "Washington D.C.", name: "Washington Wizards")
raptors = Team.create(state_or_province: "Ontario", city: "Toronto", name: "Toronto Raptors")
hawks = Team.create(state_or_province: "Georgia", city: "Atlanta", name: "Atlants Hawks")
pacers = Team.create(state_or_province: "Indiana", city: "Indianapolis", name: "Indiana Pacers")
pistons = Team.create(state_or_province: "Michigan", city: "Detriot", name: "Detriot Pistons")
bulls = Team.create(state_or_province: "Illinois", city: "Chicago", name: "Chicago Bulls")

warriors = Team.create(state_or_province: "California", city: "Oakland", name: "Golden State Warriors")
spurs = Team.create(state_or_province: "Texas", city: "San Antonio", name: "San Antonio Spurs")
rockets = Team.create(state_or_province: "Texas", city: "Houston", name: "Houston Rockets")
jazz = Team.create(state_or_province: "Utah", city: "Salt Lake City", name: "Utah Jazz")
clippers = Team.create(state_or_province: "California", city: "Los Angeles", name: "Los Angeles Clippers")
grizzlies = Team.create(state_or_province: "Tennessee", city: "Memphis", name: "Memphis Grizzlies")
thunder = Team.create(state_or_province: "Oklahoma", city: "Oklahoma City", name: "Oklahoma City Thunder")
nuggets = Team.create(state_or_province: "Colorado", city: "Denver", name: "Denver Nuggets")


michael_jordan = Player.create(name: "Michael Jordan")
kobe_bryant = Player.create(name: "Kobe Bryant")
tim_duncan = Player.create(name: "Tim Duncan")
ron_artest = Player.create(name: "Ron Artest")
nick_van_exel = Player.create(name: "Nick Van Exel")

chris_paul = Player.create(name: "Chris Paul")
kahwi_leonard = Player.create(name: "Kahwi Leonard")
isaiah_thomas = Player.create(name: "Isaiah Thomas")
mason_plumlee = Player.create(name: "Mason Plumlee")
matt_barnes = Player.create(name: "Matt Barnes")

doc_rivers = Coach.create(name: "Doc Rivers")
grep_popovich = Coach.create(name: "Greg Popovich")
brad_stephens = Coach.create(name: "Brad Stephens")
mike_malone = Coach.create(name: "Mike Malone")
steve_kerr = Coach.create(name: "Steve Kerr")
