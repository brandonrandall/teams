
############################eastern_conference############################

  cavaliers = Team.create!(state_or_province: "Ohio",
                            city: "Cleveland", name: "Cleveland Cavaliers", slug: "cleveland-cavaliers")
  wizards = Team.create!(state_or_province: "Maryland",
                          city: "Washington D.C.", name: "Washington Wizards", slug: "washington-wizaards")
  celtics = Team.create!(state_or_province: "Massachusetts",
                          city: "Boston", name: "Boston Celtics", slug: "boston-celtics")
  raptors = Team.create!(state_or_province: "Ontario",
                        city: "Toronto", name: "Toronto Raptors", slug: "toronto-raptors")
  hawks = Team.create!(state_or_province: "Georgia",
                      city: "Atlanta", name: "Atlants Hawks", slug: "atlanta-hawks")
  pacers = Team.create!(state_or_province: "Indiana",
                        city: "Indianapolis", name: "Indiana Pacers", slug: "indiana-pacers")
  pistons = Team.create!(state_or_province: "Michigan",
                        city: "Detriot", name: "Detriot Pistons", slug: "detroit-pistons")
  bucks = Team.create!(state_or_province: "Wisconsin",
                      city: "Milwaukee", name: "Milwaukee Bucks", slug: "milwaukee-bucks")
  bulls = Team.create!(state_or_province: "Illinois",
                      city: "Chicago", name: "Chicago Bulls", slug: "chicago-bulls")
  heat = Team.create!(state_or_province: "Florida",
                      city: "Miami", name: "Miami Heat", slug: "miami-heat")

############################western_conference############################

  spurs = Team.create!(state_or_province: "Texas",
                      city: "San Antonio", name: "San Antonio Spurs", slug: "san-antonio-spurs")
  warriors = Team.create!(state_or_province: "California",
                          city: "Oakland", name: "Golden State Warriors", slug: "golden-state-warriors")
  rockets = Team.create!(state_or_province: "Texas",
                        city: "Houston", name: "Houston Rockets", slug: "houston-rockets")
  jazz = Team.create!(state_or_province: "Utah",
                      city: "Salt Lake City", name: "Utah Jazz", slug: "utah-jazz")
  clippers = Team.create!(state_or_province: "California",
                          city: "Los Angeles", name: "Los Angeles Clippers", slug: "los-angeles-clippers")
  grizzlies = Team.create!(state_or_province: "Tennessee",
                          city: "Memphis", name: "Memphis Grizzlies", slug: "memphis-grizzlies")
  thunder = Team.create!(state_or_province: "Oklahoma",
                        city: "Oklahoma City", name: "Oklahoma City Thunder", slug: "oklahoma-city-thunder")
  nuggets = Team.create!(state_or_province: "Colorado",
                        city: "Denver", name: "Denver Nuggets", slug: "denver-nuggets")
  blazers = Team.create!(state_or_province: "Oregon",
                        city: "Portlane", name: "Portland Trailblazers", slug: "portland-trailblazers")
  mavericks = Team.create!(state_or_province: "Texas",
                          city: "Dallas", name: "Dallas Mavericks", slug: "dallas-mavericks")

###########################eastern_conference###########################
############################cavs
    tyron_lue = cavaliers.coaches.create!(name: "Tyron Lue")
      lebron_james = cavaliers.players.create!(name: "Lebron James", status: "active")
      kyrie_irving = cavaliers.players.create!(name: "Kyrie Irving", status: "active")
      kevin_love = cavaliers.players.create!(name: "Kevin Love", status: "active")
      tristan_thompson = cavaliers.players.create!(name: "Tristan Thompson", status: "active")
      iman_shumpert = cavaliers.players.create!(name: "Iman Shumpert", status: "active")
############################wizards
    sean_brooks = wizards.coaches.create!(name: "Sean Brooks")
      # john_wall
      # bradley_beal
      # marcin_gortat
      # otto_porter
      brandon_jennings = wizards.players.create!(name: "Brandon Jennings", status: "active")
############################celtics
    brad_stephens = celtics.coaches.create!(name: "Brad Stephens")
      isaiah_thomas = celtics.players.create!(name: "Isaiah Thomas", status: "active")
      marcus_smart = celtics.players.create!(name: "Marcus Smart", status: "active")
      kelly_olynyk = celtics.players.create!(name: "Kelly Olynyk", status: "active")
      al_horford = celtics.players.create!(name: "Al Horford", status: "active")
      avery_bradley = celtics.players.create!(name: "Avery Bradley", status: "active")
############################raptors
    dwane_casey = raptors.coaches.create!(name: "Dwane Casey")
      # demarr_derozan
      # kyle_lowry
      # jonas_valaciunus
      # demarre_carrol
      serge_ibaka = raptors.players.create!(name: "Serge Ibaka", status: "active")
############################hawks
    mike_budenholzer = hawks.coaches.create!(name: "Mike Budenholzer")
      # dennis_schroder
      dwight_howard = hawks.players.create!(name: "Dwight Howard", status: "active")
      paul_millsap = hawks.players.create!(name: "Paul Millsap", status: "active")
      # tim_hardaway_jr
      # taurean_prince
############################pacers
    nate_mcmillan = pacers.coaches.create!(name: "Nate McMillan")
      # paul_george
      jeff_teague = pacers.players.create!(name: "Jeff Teague", status: "active")
      # miles_turner
      cj_miles =  pacers.players.create!(name: "CJ Miles", status: "active")
      monta_ellis = pacers.players.create!(name: "Monta Ellis", status: "active")
############################pistons
    stan_van_gundy = pistons.coaches.create!(name: "Stan Van Gundy")
      # andre_drummond
      reggie_jackson = pistons.players.create!(name: "Reggie Jackson", status: "active")
      # stanley_johnson
      # ish_smith
      # tobias_harris
############################bucks
    jason_kidd = bucks.coaches.create!(name: "Jason Kidd")
      # giannis
      matthew_dellividova = bucks.players.create!(name: "Matthew Dellividova", status: "active")
      # malcolm_brogdon
      greg_monroe = bucks.players.create!(name: "Greg Monroe", status: "active")
      # john_henson
############################bulls
    fred_hoiberg = bulls.coaches.create!(name: "Chicago Bulls")
      # jimmy_butler
      michael_carter_williams = bulls.players.create!(name: "Michael Carter Williams", status: "active")
      rajon_rondo = bulls.players.create!(name: "Rajon Rondo", status: "active")
      dwayne_wade = bulls.players.create!(name: "Dwayne Wade", status: "active")
      # nikola_mirotic
############################heat
    erik_spoelstra = heat.coaches.create!(name: "Erik Spoelstra")
      # hassan_whiteside
      # goran_dragic
      dion_waiters = heat.players.create!(name: "Dion Waiters", status: "active")
      # justise_winslow
      udonis_haslem = heat.players.create!(name: "Udonis Haslem", status: "active")

###########################western_conference###########################
###########################spurs
    greg_popovich = spurs.coaches.create!(name: "Greg Popovich")
      kahwi_leonard = spurs.players.create!(name: "Kahwi Leonard", status: "active")
      lemarcus_aldridge = spurs.players.create!(name: "Lemarcus Aldridge", status: "active")
      tony_parker = spurs.players.create!(name: "Tony Parker", status: "active")
      patty_mills = spurs.players.create!(name: "Patty Mills", status: "active")
      johnathan_simmons = spurs.players.create!(name: "Johnathan Simmons", status: "active")

###########################a coach couldve been a player as well###########################

  ###########################warriors
    steve_kerr = warriors.coaches.create!(name: "Steve Kerr")
      matt_barnes = warriors.players.create!(name: "Matt Barnes", status: "active")
      klay_thompson = warriors.players.create!(name: "Klay Thompson", status: "active")
      draymond_green = warriors.players.create!(name: "Draymond Green", status: "active")
      steph_curry = warriors.players.create!(name: "Stephen Curry", status: "active")
      kevin_durant = warriors.players.create!(name: "Kevin Durant", status: "active")

###########################rockets
    mike_dantoni = rockets.coaches.create!(name: "Mike D'Antoni")
      james_harden = rockets.players.create!(name: "James Harden", status: "active")
      # patrick_beverly
      # trevor_ariza
      # ryan_anderson
      # clint

###########################jazz
    quin_snyder = jazz.coaches.create!(name: "Quin Snyder")
      # gordon_hayword
      # rudy_gobert
      george_hill = jazz.players.create!(name: "George Hill", status: "active")
      # trey_lyles
      # derrick_favors

###########################clippers
    doc_rivers = clippers.coaches.create!(name: "Doc Rivers")
      chris_paul = clippers.players.create!(name: "Chris Paul", status: "active")
      deandre_jordan = clippers.players.create!(name: "Deandre Jordan", status: "active")
      blake_griffin = clippers.players.create!(name: "Blake Griffin", status: "active")
      austin_rivers = clippers.players.create!(name: "Austin Rivers", status: "active")
      jamal_crawford = clippers.players.create!(name: "Jamal Crawford", status: "active")

###########################grizzlies
    david_fizdale = grizzlies.coaches.create!(name: "David Fizdale")
      # mike_conley
      # marc_gasol
      # vince_carter
      tony_allen = grizzlies.players.create!(name: "Tony Allen", status: "active")
      # zach_randolph

###########################thunder
    billy_donovan = thunder.coaches.create!(name: "Billy Donovan")
      russell_westbrook = thunder.players.create!(name: "Russell Westbrook", status: "active")
      enes_kanter = thunder.players.create!(name: "Enes Kanter", status: "active")
      steven_adams = thunder.players.create!(name: "Steven Adams", status: "active")
      victor_oladipo = thunder.players.create!(name: "Victor Oladipo", status: "active")
      domantas_sabonis = thunder.players.create!(name: "Domantas Sabonis", status: "active")

###########################nuggets
    mike_malone = nuggets.coaches.create!(name: "Mike Malone")
      mason_plumlee = nuggets.players.create!(name: "Mason Plumlee", status: "active")
      emmanuel_mudiay = nuggets.players.create!(name: "Emmanuel Mudiay", status: "active")
      nikola_jokic = nuggets.players.create!(name: "Nikola Jokic", status: "active")
      jamal_murray = nuggets.players.create!(name: "Jamal Murray", status: "active")
      kenneth_faried = nuggets.players.create!(name: "Kenneth Faried", status: "active")

############################blazers
    terry_stotts = blazers.coaches.create!(name: "Terry Stotts")
      damian_lillard = blazers.players.create!(name: "Damian Lillard", status: "active")
      cj_mccullum = blazers.players.create!(name: "CJ McCollum", status: "active")
      al_forouq_aminu = blazers.players.create!(name: "Al Forouq Aminu", status: "active")
      jusuf_nurkic = blazers.players.create!(name: "Jusuf Nurkic", status: "active")
      evan_turner = blazers.players.create!(name: "Evan Turner", status: "active")


############################mavericks
    rick_carlisle = mavericks.coaches.create!(name: "Rick Carlisle")
    #how do i implement a nickname on a general page and real name on direct page
      jose_juan_barea = mavericks.players.create!(name: "JJ Barea", status: "active")
      dirk_nowitzki = mavericks.players.create!(name: "Dirk Novitzki", status: "active")
      wesley_mathews = mavericks.players.create!(name: "Devin Harris", status: "active")
      harrison_barnes = mavericks.players.create!(name: "Harrison Barnes", status: "active")
      # devin_harris


############################prev_players############################

cavaliers.team_players.create!(player: matthew_dellividova, current: false)

heat.team_players.create!(player: lebron_james, current: false)
heat.team_players.create!(player: dwayne_wade, current: false)

# celtics.team_players.create!(player: evan_turner, current: false)
celtics.team_players.create!(player: tony_allen, current: false)
celtics.team_players.create!(player: rajon_rondo, current: false)

hawks.team_players.create!(player: jeff_teague, current: false)
hawks.team_players.create!(player: al_horford, current: false)

bulls.team_players.create!(player: rajon_rondo, current: false)

spurs.team_players.create!(player: george_hill, current: false)

clippers.team_players.create!(player: al_forouq_aminu, current: false)
clippers.team_players.create!(player: matt_barnes, current: false)


thunder.team_players.create!(player: james_harden, current: false)
thunder.team_players.create!(player: kevin_durant, current: false)
thunder.team_players.create!(player: dion_waiters, current: false)

blazers.team_players.create!(player: mason_plumlee, current: false)
blazers.team_players.create!(player: lemarcus_aldridge, current: false)
blazers.team_players.create!(player: wesley_mathews, current: false)

bucks.team_players.create!(player: brandon_jennings, current: false)
bucks.team_players.create!(player: michael_carter_williams, current: false)

jazz.team_players.create!(player: enes_kanter, current: false)

thunder.team_players.create!(player: reggie_jackson, current: false)

warriors.team_players.create!(player: harrison_barnes, current: false)

pistons.team_players.create!(player: greg_monroe, current: false)
pistons.team_players.create!(player: brandon_jennings, current: false)

############################prev_player_coaches############################
lebron_james.player_coaches.create!(coach: erik_spoelstra, current: false)
george_hill.player_coaches.create!(coach: greg_popovich, current: false)
kevin_durant.player_coaches.create!(coach: sean_brooks, current: false)
harrison_barnes.player_coaches.create!(coach: steve_kerr, current: false)
serge_ibaka.player_coaches.create!(coach: sean_brooks, current: false)
############################prev_team_coaches############################
thunder.team_coaches.create!(coach: sean_brooks, current: false)
celtics.team_coaches.create!(coach: doc_rivers, current: false)
pacers.team_coaches.create!(coach: rick_carlisle, current: false)
#hakeem
#tim_duncan
#lebron
#michael_jordan
#magic
#kyrie

#admiral
#kg
#chuck
#kobe
#j Kidd
#j will
