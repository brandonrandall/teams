# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

###### maybe do a PLAYOFF RACE tracker for the top 8 teams in each conference!!!!!!!

cavaliers = Team.create(city: "Cleveland", name: "Cavaliers")
celtics = Team.create(city: "Boston", name: "Celtics")
wizards = Team.create(city: "Washington", name: "Wizards")
raptors = Team.create(city: "Toronto", name: "Raptors")
hawks = Team.create(city: "Atlanta", name: "Hawks")
pacers = Team.create(city: "Indiana", name: "Pacers")
pistons = Team.create(city: "Detriot", name: "Pistons")
bulls = Team.create(city: "Chicago", name: "Bulls")

warriors = Team.create(city: "Golden State", name: "Warriors")
spurs = Team.create(city: "San Antonio", name: "Spurs")
rockets = Team.create(city: "Houston", name: "Rockets")
jazz = Team.create(city: "Utah", name: "Jazz")
clippers = Team.create(city: "Los Angeles", name: "Clippers")
grizzlies = Team.create(city: "Memphis", name: "Grizzlies")
thunder = Team.create(city: "Oklahoma City", name: "Thunder")
nuggets = Team.create(city: "Denver", name: "Nuggets")


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
