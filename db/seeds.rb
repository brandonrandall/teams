# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

###### maybe do a PLAYOFF RACE tracker for the top 8 teams in each conference!!!!!!!
##### create player icons that can be dragged and dropped to update the database**JavaScript
# eastern_conference = []

  cavaliers = Team.create(state_or_province: "Ohio",
                          city: "Cleveland", name: "Cleveland Cavaliers")
    tyron_lue = cavaliers.coaches.create(name: "Tyron Lue")
      lebron_james = cavaliers.players.create(name: "Lebron James", status: "active")
      kyrie_irving = cavaliers.players.create(name: "Kyrie Irving", status: "active")
      kevin_love = cavaliers.players.create(name: "Kevin Love", status: "active")
      tristan_thompson = cavaliers.players.create(name: "Tristan Thompson", status: "active")
      iman_shumpert = cavaliers.players.create(name: "Iman Shumpert", status: "active")

  wizards = Team.create(state_or_province: "Maryland",
                        city: "Washington D.C.", name: "Washington Wizards")
    sean_brooks = wizards.coaches.create(name: "Sean Brooks")
      # john_wall
      # bradley_beal
      # marcin_gortat
      # otto_porter
      brandon_jennings = wizards.players.create(name: "Brandon Jennings", status: "active")

  celtics = Team.create(state_or_province: "Massachusetts",
                        city: "Boston", name: "Boston Celtics")
    brad_stephens = celtics.coaches.create(name: "Brad Stephens")
      isaiah_thomas = celtics.players.create(name: "Isaiah Thomas", status: "active")
      marcus_smart = celtics.players.create(name: "Marcus Smart", status: "active")
      kelly_olynyk = celtics.players.create(name: "Kelly Olynyk", status: "active")
      al_horford = celtics.players.create(name: "Al Horford", status: "active")
      avery_bradley = celtics.players.create(name: "Avery Bradley", status: "active")

  raptors = Team.create(state_or_province: "Ontario",
                        city: "Toronto", name: "Toronto Raptors")
    dwane_casey = raptors.coaches.create(name: "Dwane Casey")
      # demarr_derozan
      # kyle_lowry
      # jonas_valaciunus
      # demarre_carrol
      serge_ibaka = raptors.players.create(name: "Serge Ibaka", status: "active")

  hawks = Team.create(state_or_province: "Georgia",
                      city: "Atlanta", name: "Atlants Hawks")
    mike_budenholzer = hawks.coaches.create(name: "Mike Budenholzer")
      # dennis_schroder
      dwight_howard = hawks.players.create(name: "Dwight Howard", status: "active")
      paul_millsap = hawks.players.create(name: "Paul Millsap", status: "active")
      # tim_hardaway_jr
      # taurean_prince

  pacers = Team.create(state_or_province: "Indiana",
                        city: "Indianapolis", name: "Indiana Pacers")
    nate_mcmillan = pacers.coaches.create(name: "Nate McMillan")
      # paul_george
      jeff_teague = pacers.players.create(name: "Jeff Teague", status: "active")
      # miles_turner
      cj_miles =  pacers.players.create(name: "CJ Miles", status: "active")
      monta_ellis = pacers.players.create(name: "Monta Ellis", status: "active")

  pistons = Team.create(state_or_province: "Michigan",
                        city: "Detriot", name: "Detriot Pistons")
    stan_van_gundy = pistons.coaches.create(name: "Stan Van Gundy")
      # andre_drummond
      reggie_jackson = pistons.players.create(name: "Reggie Jackson", status: "active")
      # stanley_johnson
      # ish_smith
      # tobias_harris

  bucks = Team.create(state_or_province: "Wisconsin",
                      city: "Milwaukee", name: "Milwaukee Bucks")
    jason_kidd = bucks.coaches.create(name: "Jason Kidd")
      # giannis
      matthew_dellividova = bucks.players.create(name: "Matthew Dellividova", status: "active")
      # malcolm_brogdon
      # greg_monroe
      # john_henson

  bulls = Team.create(state_or_province: "Illinois",
                      city: "Chicago", name: "Chicago Bulls")
    fred_hoiberg = bulls.coaches.create(name: "Chicago Bulls")
      # jimmy_butler
      # michael_carter_williams
      rajon_rondo = bulls.players.create(name: "Rajon Rondo", status: "active")
      dwayne_wade = bulls.players.create(name: "Dwayne Wade", status: "active")
      # nikola_mirotic

  heat = Team.create(state_or_province: "Florida",
                      city: "Miami", name: "Miami Heat")
    erik_spoelstra = heat.coaches.create(name: "Erik Spoelstra")
      # hassan_whiteside
      # goran_dragic
      # dion_waiters
      # justise_winslow
      udonis_haslem = heat.players.create(name: "Udonis Haslem", status: "active")

# eastern_conference.push[cavaliers, wizards, celtics, raptors, hawks,
                        # pacers, pistons, bucks, bulls, heat]


# wesern_conference = []
  spurs = Team.create(state_or_province: "Texas",
                      city: "San Antonio", name: "San Antonio Spurs")
    grep_popovich = spurs.coaches.create(name: "Greg Popovich")
      kahwi_leonard = spurs.players.create(name: "Kahwi Leonard", status: "active")
      lemarcus_aldridge = spurs.players.create(name: "Lemarcus Aldridge", status: "active")
      tony_parker = spurs.players.create(name: "Tony Parker", status: "active")
      patty_mills = spurs.players.create(name: "Patty Mills", status: "active")
      johnathan_simmons = spurs.players.create(name: "Johnathan Simmons", status: "active")

  warriors = Team.create(state_or_province: "California",
                          city: "Oakland", name: "Golden State Warriors")
    steve_kerr = warriors.coaches.create(name: "Steve Kerr")
      matt_barnes = warriors.players.create(name: "Matt Barnes", status: "active")
      klay_thompson = warriors.players.create(name: "Klay Thompson", status: "active")
      draymond_green = warriors.players.create(name: "Draymond Green", status: "active")
      steph_curry = warriors.players.create(name: "Stephen Curry", status: "active")
      kevin_durant = warriors.players.create(name: "Kevin Durant", status: "active")

  rockets = Team.create(state_or_province: "Texas",
                        city: "Houston", name: "Houston Rockets")
    mike_dantoni = rockets.coaches.create(name: "Mike D'Antoni")
      james_harden = rockets.players.create(name: "James Harden", status: "active")
      # patrick_beverly
      # trevor_ariza
      # ryan_anderson
      # clint

  jazz = Team.create(state_or_province: "Utah",
                      city: "Salt Lake City", name: "Utah Jazz")
    quin_snyder = jazz.coaches.create(name: "Quin Snyder")
      # gordon_hayword
      # rudy_gobert
      george_hill = jazz.players.create(name: "George Hill", status: "active")
      # trey_lyles
      # derrick_favors

  clippers = Team.create(state_or_province: "California",
                          city: "Los Angeles", name: "Los Angeles Clippers")
    doc_rivers = clippers.coaches.create(name: "Doc Rivers")
      chris_paul = clippers.players.create(name: "Chris Paul", status: "active")
      deandre_jordan = clippers.players.create(name: "Deandre Jordan", status: "active")
      blake_griffin = clippers.players.create(name: "Blake Griffin", status: "active")
      austin_rivers = clippers.players.create(name: "Austin Rivers", status: "active")
      jamal_crawford = clippers.players.create(name: "Jamal Crawford", status: "active")

  grizzlies = Team.create(state_or_province: "Tennessee",
                          city: "Memphis", name: "Memphis Grizzlies")
    david_fizdale = grizzlies.coaches.create(name: "David Fizdale")
      # mike_conley
      # marc_gasol
      # vince_carter
      tony_allen = grizzlies.players.create(name: "Tony Allen", status: "active")
      # zach_randolph

  thunder = Team.create(state_or_province: "Oklahoma",
                        city: "Oklahoma City", name: "Oklahoma City Thunder")
    billy_donovan = thunder.coaches.create(name: "Billy Donovan")
      russell_westbrook = thunder.players.create(name: "Russell Westbrook", status: "active")
      enes_kanter = thunder.players.create(name: "Enes Kanter", status: "active")
      steven_adams = thunder.players.create(name: "Steven Adams", status: "active")
      victor_oladipo = thunder.players.create(name: "Victor Oladipo", status: "active")
      domantas_sabonis = thunder.players.create(name: "Domantas Sabonis", status: "active")

  nuggets = Team.create(state_or_province: "Colorado",
                        city: "Denver", name: "Denver Nuggets")
    mike_malone = nuggets.coaches.create(name: "Mike Malone")
      mason_plumlee = nuggets.players.create(name: "Mason Plumlee", status: "active")
      emmanuel_mudiay = nuggets.players.create(name: "Emmanuel Mudiay", status: "active")
      nikola_jokic = nuggets.players.create(name: "Nikola Jokic", status: "active")
      jamal_murray = nuggets.players.create(name: "Jamal Murray", status: "active")
      kenneth_faried = nuggets.players.create(name: "Kenneth Faried", status: "active")

  blazers = Team.create(state_or_province: "Oregon",
                        city: "Portlane", name: "Portland Trailblazers")
    terry_stotts = blazers.coaches.create(name: "Terry Stotts")
      # damian_lillard
      # cj_mccullum
      # al_forouq_aminu
      jusuf_nurkic = blazers.players.create(name: "Jusuf Nurkic", status: "active")
      # evan_turner

  mavericks = Team.create(state_or_province: "Texas",
                          city: "Dallas", name: "Dallas Mavericks")
    rick_carlisle = mavericks.coaches.create(name: "Rick Carlisle")
      # jose_juan_barea
      # dirk_nowitzki
      wesley_mathews = mavericks.players.create(name: "Devin Harris", status: "active")
      harrison_barnes = mavericks.players.create(name: "Harrison Barnes", status: "active")
      # devin_harris

# western_conference.push[warriors, spurs, rockets, jazz, clippers,
                        # grizzlies, thunder, nuggets, blazers, magic]


# retired_players = []
      michael_jordan = bulls.players.create(name: "Michael Jordan", status: "retired")
      tim_duncan = spurs.players.create(name: "Tim Duncan", status: "retired")
# retired_players.push
# retired_coaches = []
