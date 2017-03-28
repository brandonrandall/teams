brandon_randall = User.create(name: "Brandon Randall",
                              email: "br.mhcexchange@gmail.com",
                              username: "BB King",
                              password: "b",
                              role: 0)
carelis_randall = User.create(name: "Carelis Randall",
                              email: "carelisrandall@gmail.com",
                              username: "C Randall",
                              password: "c",
                              role: 1)
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



    # TEAMS = []
    # STATUS = "active"
    #
    # NBA_TEAMS = [
    #               [:portland, { name: "Portland Trailblazers", city: "Portland", state_or_province: "Oregon" }],
    #               [:cleveland, { name: "Cleveland Cavaliers", city: "Cleveland", state_or_province: "Ohio" }]
    #             ]
    # NBA_PLAYERS = {
    #                 cleveland: [
    #                             "Lebron James",
    #                             "Iman Shumpert"
    #                            ]
    #                }
    #
    # def kick_off
    #   NBA_TEAMS.each do |team|
    #     make_team(team)
    #   end
    # end
    #
    # def make_team(team)
    #   team_hash = {}
    #   created_team = Team.create!(name: team[1][:name], city: team[1][:city], state_or_province: team[1][:state_or_province], slug: create_slug(team[1][:name]))
    #   puts "Team: #{created_team.name} created!"
    #   team_hash[team[0]] = created_team
    #   TEAMS << team_hash
    #   make_players
    # end
    #
    # def make_players
    #   TEAMS.each do |nba_team|
    #     NBA_PLAYERS.each do |team, players|
    #       connect_teams_to_current_players(nba_team, team, players)
    #     end
    #   end
    # end
    #
    # def connect_teams_to_current_players(nba_team, team, players)
    #   if nba_team.keys.first == team
    #     players.each do |name|
    #       created_player = nba_team.values.first.players.create(name: name, status: STATUS) #slug: create_slug(player.last))
    #       puts "Player: #{created_player.name} created!"
    #     end
    #   end
    # end
    #
    # def create_slug(name)
    #   name.split.map { |split_name| split_name.downcase }.join("-")
    # end
    #
    # kick_off



###########################eastern_conference###########################
############################cavs
     #need to figure out how to dynamically do name.split.map { |name| name.downcase }.join("-")
    tyron_lue = cavaliers.coaches.create!(name: "Tyron Lue", slug: "tyron-lue")
      lebron_james = cavaliers.players.create!(name: "Lebron James", status: "active", slug: "lebron-james")
      lebron_james.player_coaches.create!(coach: tyron_lue)
      kyrie_irving = cavaliers.players.create!(name: "Kyrie Irving", status: "active", slug: "kyrie-irving")
      kyrie_irving.player_coaches.create!(coach: tyron_lue)
      kevin_love = cavaliers.players.create!(name: "Kevin Love", status: "active", slug: "kevin-love")
      kevin_love.player_coaches.create!(coach: tyron_lue)
      tristan_thompson = cavaliers.players.create!(name: "Tristan Thompson", status: "active", slug: "tristan-thompson")
      tristan_thompson.player_coaches.create!(coach: tyron_lue)
      iman_shumpert = cavaliers.players.create!(name: "Iman Shumpert", status: "active", slug: "iman-shumpert")
      iman_shumpert.player_coaches.create!(coach: tyron_lue)
      kyle_korver = cavaliers.players.create!(name: "Kyle Korver", status: "active", slug: "kyle-korver")
      kyle_korver.player_coaches.create!(coach: tyron_lue)
############################wizards
    sean_brooks = wizards.coaches.create!(name: "Sean Brooks", slug: "sean-brooks")
      # john_wall
      # bradley_beal
      # marcin_gortat
      # otto_porter
      brandon_jennings = wizards.players.create!(name: "Brandon Jennings", status: "active", slug: "brandon-jennings")
      brandon_jennings.player_coaches.create!(coach: sean_brooks)
############################celtics
    brad_stephens = celtics.coaches.create!(name: "Brad Stephens", slug: "brad-stephens")
      isaiah_thomas = celtics.players.create!(name: "Isaiah Thomas", status: "active", slug: "isaiah-thomas")
      isaiah_thomas.player_coaches.create!(coach: brad_stephens)
      marcus_smart = celtics.players.create!(name: "Marcus Smart", status: "active", slug: "marcus-smart")
      marcus_smart.player_coaches.create!(coach: brad_stephens)
      kelly_olynyk = celtics.players.create!(name: "Kelly Olynyk", status: "active", slug: "kelly-olynyk")
      kelly_olynyk.player_coaches.create!(coach: brad_stephens)
      al_horford = celtics.players.create!(name: "Al Horford", status: "active", slug: "al-horford")
      al_horford.player_coaches.create!(coach: brad_stephens)
      avery_bradley = celtics.players.create!(name: "Avery Bradley", status: "active", slug: "avery-bradley")
      avery_bradley.player_coaches.create!(coach: brad_stephens)
############################raptors
    dwane_casey = raptors.coaches.create!(name: "Dwane Casey", slug: "dwane-casey")
      # demarr_derozan
      # kyle_lowry
      # jonas_valaciunus
      # demarre_carrol
      serge_ibaka = raptors.players.create!(name: "Serge Ibaka", status: "active", slug: "serge-ibaka")
      serge_ibaka.player_coaches.create!(coach: dwane_casey)
############################hawks
    mike_budenholzer = hawks.coaches.create!(name: "Mike Budenholzer", slug: "mike-budenholzer")
      # dennis_schroder
      dwight_howard = hawks.players.create!(name: "Dwight Howard", status: "active", slug: "dwight-howard")
      dwight_howard.player_coaches.create!(coach: mike_budenholzer)
      paul_millsap = hawks.players.create!(name: "Paul Millsap", status: "active", slug: "paul-millsap")
      paul_millsap.player_coaches.create!(coach: mike_budenholzer)
      # tim_hardaway_jr
      # taurean_prince
############################pacers
    nate_mcmillan = pacers.coaches.create!(name: "Nate McMillan", slug: "nate-mcmillan")
      # paul_george
      jeff_teague = pacers.players.create!(name: "Jeff Teague", status: "active", slug: "jeff-teague")
      jeff_teague.player_coaches.create!(coach: nate_mcmillan)
      # miles_turner
      cj_miles =  pacers.players.create!(name: "CJ Miles", status: "active", slug: "cj-miles")
      cj_miles.player_coaches.create!(coach: nate_mcmillan)
      monta_ellis = pacers.players.create!(name: "Monta Ellis", status: "active", slug: "monta-ellis")
      monta_ellis.player_coaches.create!(coach: nate_mcmillan)
############################pistons
    stan_van_gundy = pistons.coaches.create!(name: "Stan Van Gundy", slug: "stan-van-gundy")
      # andre_drummond
      reggie_jackson = pistons.players.create!(name: "Reggie Jackson", status: "active", slug: "reggie-jackson")
      reggie_jackson.player_coaches.create(coach: stan_van_gundy)
      # stanley_johnson
      # ish_smith
      # tobias_harris
############################bucks
    jason_kidd = bucks.coaches.create!(name: "Jason Kidd", slug: "jason-kidd")
      # giannis
      matthew_dellividova = bucks.players.create!(name: "Matthew Dellividova", status: "active", slug: "matthew-dellividova")
      matthew_dellividova.player_coaches.create(coach: jason_kidd)
      # malcolm_brogdon
      greg_monroe = bucks.players.create!(name: "Greg Monroe", status: "active", slug: "greg-monroe")
      greg_monroe.player_coaches.create(coach: jason_kidd)
      # john_henson
############################bulls
    fred_hoiberg = bulls.coaches.create!(name: "Chicago Bulls", slug: "fred-hoiberg")
      # jimmy_butler
      michael_carter_williams = bulls.players.create!(name: "Michael Carter Williams", status: "active", slug: "michael-carter-williams")
      rajon_rondo = bulls.players.create!(name: "Rajon Rondo", status: "active", slug: "rajon-rondo")
      rajon_rondo.player_coaches.create(coach: fred_hoiberg)
      dwayne_wade = bulls.players.create!(name: "Dwayne Wade", status: "active", slug: "dwayne-wade")
      dwayne_wade.player_coaches.create(coach: fred_hoiberg)
      # nikola_mirotic
############################heat
    erik_spoelstra = heat.coaches.create!(name: "Erik Spoelstra", slug: "erik-spoelstra")
      # hassan_whiteside
      # goran_dragic
      dion_waiters = heat.players.create!(name: "Dion Waiters", status: "active", slug: "dion-waiters")
      dion_waiters.player_coaches.create(coach: erik_spoelstra)
      # justise_winslow
      udonis_haslem = heat.players.create!(name: "Udonis Haslem", status: "active", slug: "udonis-haslem")
      udonis_haslem.player_coaches.create(coach: erik_spoelstra)

###########################western_conference###########################
###########################spurs
    greg_popovich = spurs.coaches.create!(name: "Greg Popovich", slug: "greg-popovich")
      kahwi_leonard = spurs.players.create!(name: "Kahwi Leonard", status: "active", slug: "kahwi-leonard")
      # kahwi_leonard = player_coaches.create(coach: greg_popovich)
      lemarcus_aldridge = spurs.players.create!(name: "Lemarcus Aldridge", status: "active", slug: "lemarcus-aldridge")
      lemarcus_aldridge.player_coaches.create(coach: greg_popovich)
      tony_parker = spurs.players.create!(name: "Tony Parker", status: "active", slug: "tony-parker")
      tony_parker.player_coaches.create(coach: greg_popovich)
      patty_mills = spurs.players.create!(name: "Patty Mills", status: "active", slug: "patty-mills")
      patty_mills.player_coaches.create(coach: greg_popovich)
      johnathan_simmons = spurs.players.create!(name: "Johnathan Simmons", status: "active", slug: "johnathan-simmons")
      johnathan_simmons.player_coaches.create(coach: greg_popovich)

###########################a coach couldve been a player as well###########################

  ###########################warriors
    steve_kerr = warriors.coaches.create!(name: "Steve Kerr", slug: "steve-kerr")
      matt_barnes = warriors.players.create!(name: "Matt Barnes", status: "active", slug: "matt-barnes")
      matt_barnes.player_coaches.create(coach: steve_kerr)
      klay_thompson = warriors.players.create!(name: "Klay Thompson", status: "active", slug: "klay-thompson")
      klay_thompson.player_coaches.create(coach: steve_kerr)
      draymond_green = warriors.players.create!(name: "Draymond Green", status: "active", slug: "draymond-green")
      draymond_green.player_coaches.create(coach: steve_kerr)
      steph_curry = warriors.players.create!(name: "Stephen Curry", status: "active", slug: "steph-curry")
      steph_curry.player_coaches.create(coach: steve_kerr)
      kevin_durant = warriors.players.create!(name: "Kevin Durant", status: "active", slug: "kevin-durant")
      kevin_durant.player_coaches.create(coach: steve_kerr)

###########################rockets
    mike_dantoni = rockets.coaches.create!(name: "Mike D'Antoni", slug: "mike-dantoni")
      james_harden = rockets.players.create!(name: "James Harden", status: "active", slug: "james-harden")
      james_harden.player_coaches.create(coach: mike_dantoni)
      # patrick_beverly
      # trevor_ariza
      # ryan_anderson
      # clint

###########################jazz
    quin_snyder = jazz.coaches.create!(name: "Quin Snyder", slug: "quin-snyder")
      # gordon_hayword
      # rudy_gobert
      george_hill = jazz.players.create!(name: "George Hill", status: "active", slug: "george-hill")
      george_hill.player_coaches.create(coach: quin_snyder)

      # trey_lyles
      # derrick_favors

###########################clippers
    doc_rivers = clippers.coaches.create!(name: "Doc Rivers", slug: "doc-rivers")
      chris_paul = clippers.players.create!(name: "Chris Paul", status: "active", slug: "chris-paul")
      deandre_jordan = clippers.players.create!(name: "Deandre Jordan", status: "active", slug: "deandre-jordan")
      deandre_jordan.player_coaches.create(coach: doc_rivers)
      blake_griffin = clippers.players.create!(name: "Blake Griffin", status: "active", slug: "blake-griffin")
      blake_griffin.player_coaches.create(coach: doc_rivers)
      austin_rivers = clippers.players.create!(name: "Austin Rivers", status: "active", slug: "austin-rivers")
      austin_rivers.player_coaches.create(coach: doc_rivers)
      jamal_crawford = clippers.players.create!(name: "Jamal Crawford", status: "active", slug: "jamal-crawford")
      jamal_crawford.player_coaches.create(coach: doc_rivers)

###########################grizzlies
    david_fizdale = grizzlies.coaches.create!(name: "David Fizdale", slug: "david-fizdale")
      # mike_conley
      # marc_gasol
      vince_carter = grizzlies.players.create(name: "Vince Carter", status: "active", slug: "vince-carter")
      vince_carter.player_coaches.create(coach: david_fizdale)
      tony_allen = grizzlies.players.create!(name: "Tony Allen", status: "active", slug: "tony-allen")
      tony_allen.player_coaches.create(coach: david_fizdale)
      # zach_randolph

###########################thunder
    billy_donovan = thunder.coaches.create!(name: "Billy Donovan", slug: "billy-donovan")
      russell_westbrook = thunder.players.create!(name: "Russell Westbrook", status: "active", slug: "russell-westbrook")
      russell_westbrook.player_coaches.create(coach: billy_donovan)
      enes_kanter = thunder.players.create!(name: "Enes Kanter", status: "active", slug: "enes-kanter")
      enes_kanter.player_coaches.create(coach: billy_donovan)
      steven_adams = thunder.players.create!(name: "Steven Adams", status: "active", slug: "steven-adams")
      steven_adams.player_coaches.create(coach: billy_donovan)
      victor_oladipo = thunder.players.create!(name: "Victor Oladipo", status: "active", slug: "victor-oladipo")
      victor_oladipo.player_coaches.create(coach: billy_donovan)
      domantas_sabonis = thunder.players.create!(name: "Domantas Sabonis", status: "active", slug: "domantas-sabonis")
      domantas_sabonis.player_coaches.create(coach: billy_donovan)
      taj_gibson = thunder.players.create!(name: "Taj Gibson", status: "active", slug: "taj-gibson")
      taj_gibson.player_coaches.create(coach: billy_donovan)
###########################nuggets
    mike_malone = nuggets.coaches.create!(name: "Mike Malone", slug: "mike-malone")
      mason_plumlee = nuggets.players.create!(name: "Mason Plumlee", status: "active", slug: "mason-plumlee")
      mason_plumlee.player_coaches.create(coach: mike_malone)
      emmanuel_mudiay = nuggets.players.create!(name: "Emmanuel Mudiay", status: "active", slug: "emmanuel-mudiay")
      emmanuel_mudiay.player_coaches.create(coach: mike_malone)
      nikola_jokic = nuggets.players.create!(name: "Nikola Jokic", status: "active", slug: "nikola-jokic")
      nikola_jokic.player_coaches.create(coach: mike_malone)
      jamal_murray = nuggets.players.create!(name: "Jamal Murray", status: "active", slug: "jamal-murray")
      jamal_murray.player_coaches.create(coach: mike_malone)
      kenneth_faried = nuggets.players.create!(name: "Kenneth Faried", status: "active", slug: "kenneth-faried")
      kenneth_faried.player_coaches.create(coach: mike_malone)

############################blazers
    terry_stotts = blazers.coaches.create!(name: "Terry Stotts", slug: "terry-stotts")
      damian_lillard = blazers.players.create!(name: "Damian Lillard", status: "active", slug: "damian-lillard")
      damian_lillard.player_coaches.create(coach: terry_stotts)
      cj_mccullum = blazers.players.create!(name: "CJ McCollum", status: "active", slug: "cj-mccullum")
      cj_mccullum.player_coaches.create(coach: terry_stotts)
      al_forouq_aminu = blazers.players.create!(name: "Al Forouq Aminu", status: "active", slug: "al-forouq-aminu")
      al_forouq_aminu.player_coaches.create(coach: terry_stotts)
      jusuf_nurkic = blazers.players.create!(name: "Jusuf Nurkic", status: "active", slug: "jusuf-nurkic")
      jusuf_nurkic.player_coaches.create(coach: terry_stotts)
      evan_turner = blazers.players.create!(name: "Evan Turner", status: "active", slug: "evan-turner")
      evan_turner.player_coaches.create(coach: terry_stotts)


############################mavericks
    rick_carlisle = mavericks.coaches.create!(name: "Rick Carlisle", slug: "rick-carlisle")
    #how do i implement a nickname on a general page and real name on direct page
      jose_juan_barea = mavericks.players.create!(name: "JJ Barea", status: "active", slug: "jose-juan-barea")
      jose_juan_barea.player_coaches.create(coach: rick_carlisle)
      dirk_nowitzki = mavericks.players.create!(name: "Dirk Novitzki", status: "active", slug: "dirk-nowitzki")
      dirk_nowitzki.player_coaches.create(coach: rick_carlisle)
      wesley_mathews = mavericks.players.create!(name: "Devin Harris", status: "active", slug: "wesley-mathews")
      wesley_mathews.player_coaches.create(coach: rick_carlisle)
      harrison_barnes = mavericks.players.create!(name: "Harrison Barnes", status: "active", slug: "harrison-barnes")
      harrison_barnes.player_coaches.create(coach: rick_carlisle)
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

bulls.team_players.create!(player: taj_gibson, current: false)

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

mavericks.team_players.create!(player: vince_carter, current: false)

raptors.team_players.create!(player: vince_carter, current: false)

############################prev_player_coaches_players############################
lebron_james.player_coaches.create!(coach: erik_spoelstra, current: false)
dwayne_wade.player_coaches.create!(coach: erik_spoelstra, current: false)
george_hill.player_coaches.create!(coach: greg_popovich, current: false)
kevin_durant.player_coaches.create!(coach: sean_brooks, current: false)
harrison_barnes.player_coaches.create!(coach: steve_kerr, current: false)
serge_ibaka.player_coaches.create!(coach: sean_brooks, current: false)
tony_allen.player_coaches.create!(coach: doc_rivers, current: false)
al_horford.player_coaches.create!(coach: mike_budenholzer, current: false)
kyle_korver.player_coaches.create(coach: mike_budenholzer, current: false)
vince_carter.player_coaches.create!(coach: rick_carlisle, current: false)
taj_gibson.player_coaches.create!(coach: fred_hoiberg, current: false)
############################prev_team_coaches############################
thunder.team_coaches.create!(coach: sean_brooks, current: false)
celtics.team_coaches.create!(coach: doc_rivers, current: false)
pacers.team_coaches.create!(coach: rick_carlisle, current: false)

# hakeem
# tim_duncan
# lebron
# michael_jordan
# magic
# kyrie

# kareem
# admiral
# #kg
# kobe
# westbrook
# j will

#dikembe
#kg
#bird
#j kidd
#isaiah
