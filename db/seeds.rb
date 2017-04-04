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

################ how do i implement a nickname on a general page and real name on direct page

############################eastern_conference############################
  cavaliers = Team.create!(state_or_province: "Ohio",
                            city: "Cleveland", name: "Cleveland Cavaliers", slug: "cleveland-cavaliers")
  celtics = Team.create!(state_or_province: "Massachusetts",
                          city: "Boston", name: "Boston Celtics", slug: "boston-celtics")
  wizards = Team.create!(state_or_province: "Maryland",
                          city: "Washington D.C.", name: "Washington Wizards", slug: "washington-wizaards")
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
  hornets = Team.create(state_or_province: "North Carolina",
                      city: "Charlotte", name: "Charlotte Hornets", slug: "charlotte-hornets")
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
  blazers = Team.create!(state_or_province: "Oregon",
                        city: "Portlane", name: "Portland Trailblazers", slug: "portland-trailblazers")
  nuggets = Team.create!(state_or_province: "Colorado",
                        city: "Denver", name: "Denver Nuggets", slug: "denver-nuggets")
  mavericks = Team.create!(state_or_province: "Texas",
                          city: "Dallas", name: "Dallas Mavericks", slug: "dallas-mavericks")
  pelicans = Team.create!(state_or_province: "Louisana",
                          city: "New Orleans", name: "New Orleans Saints", slug: "new-orleans-saints")
#########################
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
    #need to figure out how to dynamically do name.split.map { |name| name.downcase }.join("-")

###########################eastern_conference###########################
############################cavs
    tyron_lue = cavaliers.coaches.create!(name: "Tyron Lue", slug: "tyron-lue")
      lebron_james = cavaliers.players.create!(name: "Lebron James", status: "active", slug: "lebron-james")
      kyrie_irving = cavaliers.players.create!(name: "Kyrie Irving", status: "active", slug: "kyrie-irving")
      kevin_love = cavaliers.players.create!(name: "Kevin Love", status: "active", slug: "kevin-love")
      tristan_thompson = cavaliers.players.create!(name: "Tristan Thompson", status: "active", slug: "tristan-thompson")
      iman_shumpert = cavaliers.players.create!(name: "Iman Shumpert", status: "active", slug: "iman-shumpert")
      kyle_korver = cavaliers.players.create!(name: "Kyle Korver", status: "active", slug: "kyle-korver")
    cavaliers.players.each do |player|
      player.player_coaches.create(coach: tyron_lue)
    end
############################wizards
    sean_brooks = wizards.coaches.create!(name: "Sean Brooks", slug: "sean-brooks")
      # john_wall
      # bradley_beal
      # marcin_gortat
      # otto_porter
      brandon_jennings = wizards.players.create!(name: "Brandon Jennings", status: "active", slug: "brandon-jennings")
    wizards.players.each do |player|
      player.player_coaches.create(coach: sean_brooks)
    end
############################celtics
    brad_stephens = celtics.coaches.create!(name: "Brad Stephens", slug: "brad-stephens")
      isaiah_thomas = celtics.players.create!(name: "Isaiah Thomas", status: "active", slug: "isaiah-thomas")
      marcus_smart = celtics.players.create!(name: "Marcus Smart", status: "active", slug: "marcus-smart")
      kelly_olynyk = celtics.players.create!(name: "Kelly Olynyk", status: "active", slug: "kelly-olynyk")
      al_horford = celtics.players.create!(name: "Al Horford", status: "active", slug: "al-horford")
      avery_bradley = celtics.players.create!(name: "Avery Bradley", status: "active", slug: "avery-bradley")
    celtics.players.each do |player|
      player.player_coaches.create(coach: brad_stephens)
    end
############################raptors
    dwane_casey = raptors.coaches.create!(name: "Dwane Casey", slug: "dwane-casey")
      # demarr_derozan
      # kyle_lowry
      # jonas_valaciunus
      # demarre_carrol
      serge_ibaka = raptors.players.create!(name: "Serge Ibaka", status: "active", slug: "serge-ibaka")
    raptors.players.each do |player|
      player.player_coaches.create(coach: dwane_casey)
    end
############################hawks
    mike_budenholzer = hawks.coaches.create!(name: "Mike Budenholzer", slug: "mike-budenholzer")
      # dennis_schroder
      dwight_howard = hawks.players.create!(name: "Dwight Howard", status: "active", slug: "dwight-howard")
      paul_millsap = hawks.players.create!(name: "Paul Millsap", status: "active", slug: "paul-millsap")
      # tim_hardaway_jr
      # taurean_prince
    hawks.players.each do |player|
      player.player_coaches.create(coach: mike_budenholzer)
    end
############################pacers
    nate_mcmillan = pacers.coaches.create!(name: "Nate McMillan", slug: "nate-mcmillan")
      # paul_george
      jeff_teague = pacers.players.create!(name: "Jeff Teague", status: "active", slug: "jeff-teague")
      # miles_turner
      cj_miles =  pacers.players.create!(name: "CJ Miles", status: "active", slug: "cj-miles")
      monta_ellis = pacers.players.create!(name: "Monta Ellis", status: "active", slug: "monta-ellis")
    pacers.players.each do |player|
      player.player_coaches.create(coach: nate_mcmillan)
    end
############################pistons
    stan_van_gundy = pistons.coaches.create!(name: "Stan Van Gundy", slug: "stan-van-gundy")
      # andre_drummond
      reggie_jackson = pistons.players.create!(name: "Reggie Jackson", status: "active", slug: "reggie-jackson")
      reggie_jackson.player_coaches.create(coach: stan_van_gundy)
      boban_marjanovic = pistons.players.create(name: "Boban Marjanovic", status: "active", slug: "boban-marjanovic")
      boban_marjanovic.player_coaches.create(coach: stan_van_gundy)
      # stanley_johnson
      # ish_smith
      # tobias_harris
    pistons.players.each do |player|
      player.player_coaches.create(coach: stan_van_gundy)
    end
############################bucks
    jason_kidd = bucks.coaches.create!(name: "Jason Kidd", slug: "jason-kidd")
      # giannis
      matthew_dellividova = bucks.players.create!(name: "Matthew Dellividova", status: "active", slug: "matthew-dellividova")
      # malcolm_brogdon
      greg_monroe = bucks.players.create!(name: "Greg Monroe", status: "active", slug: "greg-monroe")
      # john_henson
    bucks.players.each do |player|
      player.player_coaches.create(coach: jason_kidd)
    end
############################bulls
    fred_hoiberg = bulls.coaches.create!(name: "Chicago Bulls", slug: "fred-hoiberg")
      # jimmy_butler
      michael_carter_williams = bulls.players.create!(name: "Michael Carter Williams", status: "active", slug: "michael-carter-williams")
      rajon_rondo = bulls.players.create!(name: "Rajon Rondo", status: "active", slug: "rajon-rondo")
      dwayne_wade = bulls.players.create!(name: "Dwayne Wade", status: "active", slug: "dwayne-wade")
      nikola_mirotic = bulls.players.create!(name: "Nikola Mirotic", status: "active", slug: "nikola-mirotic")
    bulls.players.each do |player|
      player.player_coaches.create(coach: fred_hoiberg)
    end
############################heat
    erik_spoelstra = heat.coaches.create!(name: "Erik Spoelstra", slug: "erik-spoelstra")
      # hassan_whiteside
      # goran_dragic
      dion_waiters = heat.players.create!(name: "Dion Waiters", status: "active", slug: "dion-waiters")
      # justise_winslow
      udonis_haslem = heat.players.create!(name: "Udonis Haslem", status: "active", slug: "udonis-haslem")
    heat.players.each do |player|
      player.player_coaches.create(coach: erik_spoelstra)
    end
############################heat
steve_clifford = hornets.coaches.create(name: "Steve Clifford", slug: "steve-clifford")
      # kemba_walker
      nicolas_batum = hornets.players.create(name: "Nicolas Batum", status: "active", slug: "nicolas-batum")
      marco_belinelli = hornets.players.create(name: "Marco Belinelli", status: "active", slug: "marco-belinelli")
      jeremy_lamb = hornets.players.create(name: "Jeremy Lamb", status: "active", slug: "jeremy-lamb")
      # cody_zeller
      # marvin_williams
      hornets.players.each do |player|
        player.player_coaches.create(coach: steve_clifford)
      end
###########################western_conference###########################
###########################spurs
    greg_popovich = spurs.coaches.create!(name: "Greg Popovich", slug: "greg-popovich")
      kahwi_leonard = spurs.players.create!(name: "Kahwi Leonard", status: "active", slug: "kahwi-leonard")
      lemarcus_aldridge = spurs.players.create!(name: "Lemarcus Aldridge", status: "active", slug: "lemarcus-aldridge")
      tony_parker = spurs.players.create!(name: "Tony Parker", status: "active", slug: "tony-parker")
      patty_mills = spurs.players.create!(name: "Patty Mills", status: "active", slug: "patty-mills")
      johnathan_simmons = spurs.players.create!(name: "Johnathan Simmons", status: "active", slug: "johnathan-simmons")
      david_lee = spurs.players.create!(name: "David Lee", status: "active", slug: "david-lee")
    spurs.players.each do |player|
      player.player_coaches.create(coach: greg_popovich)
    end
###########################a coach couldve been a player as well###########################

  ###########################warriors
    steve_kerr = warriors.coaches.create!(name: "Steve Kerr", slug: "steve-kerr")
      matt_barnes = warriors.players.create!(name: "Matt Barnes", status: "active", slug: "matt-barnes")
      klay_thompson = warriors.players.create!(name: "Klay Thompson", status: "active", slug: "klay-thompson")
      draymond_green = warriors.players.create!(name: "Draymond Green", status: "active", slug: "draymond-green")
      steph_curry = warriors.players.create!(name: "Stephen Curry", status: "active", slug: "steph-curry")
      kevin_durant = warriors.players.create!(name: "Kevin Durant", status: "active", slug: "kevin-durant")
    warriors.players.each do |player|
      player.player_coaches.create(coach: steve_kerr)
    end
###########################rockets
    mike_dantoni = rockets.coaches.create!(name: "Mike D'Antoni", slug: "mike-dantoni")
      james_harden = rockets.players.create!(name: "James Harden", status: "active", slug: "james-harden")
      # patrick_beverly
      # trevor_ariza
      # ryan_anderson
      # clint
    rockets.players.each { |player| player.player_coaches.create(coach: mike_dantoni) }
###########################jazz
    quin_snyder = jazz.coaches.create!(name: "Quin Snyder", slug: "quin-snyder")
      # gordon_hayword
      # rudy_gobert
      george_hill = jazz.players.create!(name: "George Hill", status: "active", slug: "george-hill")
      # trey_lyles
      # derrick_favors
    jazz.players.each { |player| player.player_coaches.create(coach: quin_snyder) }

###########################clippers
    doc_rivers = clippers.coaches.create!(name: "Doc Rivers", slug: "doc-rivers")
      chris_paul = clippers.players.create!(name: "Chris Paul", status: "active", slug: "chris-paul")
      deandre_jordan = clippers.players.create!(name: "Deandre Jordan", status: "active", slug: "deandre-jordan")
      blake_griffin = clippers.players.create!(name: "Blake Griffin", status: "active", slug: "blake-griffin")
      austin_rivers = clippers.players.create!(name: "Austin Rivers", status: "active", slug: "austin-rivers")
      jamal_crawford = clippers.players.create!(name: "Jamal Crawford", status: "active", slug: "jamal-crawford")
    clippers.players.each { |player| player.player_coaches.create(coach: doc_rivers) }

###########################grizzlies
    david_fizdale = grizzlies.coaches.create!(name: "David Fizdale", slug: "david-fizdale")
      # mike_conley
      # marc_gasol =
      vince_carter = grizzlies.players.create(name: "Vince Carter", status: "active", slug: "vince-carter")
      tony_allen = grizzlies.players.create!(name: "Tony Allen", status: "active", slug: "tony-allen")
      # zach_randolph
    grizzlies.players.each { |player| player.player_coaches.create(coach: david_fizdale) }
###########################thunder
    billy_donovan = thunder.coaches.create!(name: "Billy Donovan", slug: "billy-donovan")
      russell_westbrook = thunder.players.create!(name: "Russell Westbrook", status: "active", slug: "russell-westbrook")
      enes_kanter = thunder.players.create!(name: "Enes Kanter", status: "active", slug: "enes-kanter")
      steven_adams = thunder.players.create!(name: "Steven Adams", status: "active", slug: "steven-adams")
      victor_oladipo = thunder.players.create!(name: "Victor Oladipo", status: "active", slug: "victor-oladipo")
      domantas_sabonis = thunder.players.create!(name: "Domantas Sabonis", status: "active", slug: "domantas-sabonis")
      taj_gibson = thunder.players.create!(name: "Taj Gibson", status: "active", slug: "taj-gibson")
    thunder.players.each { |player| player.player_coaches.create(coach: billy_donovan) }

###########################nuggets
    mike_malone = nuggets.coaches.create!(name: "Mike Malone", slug: "mike-malone")
      nikola_jokic = nuggets.players.create!(name: "Nikola Jokic", status: "active", slug: "nikola-jokic")
      mason_plumlee = nuggets.players.create!(name: "Mason Plumlee", status: "active", slug: "mason-plumlee")
      emmanuel_mudiay = nuggets.players.create!(name: "Emmanuel Mudiay", status: "active", slug: "emmanuel-mudiay")
      jamal_murray = nuggets.players.create!(name: "Jamal Murray", status: "active", slug: "jamal-murray")
      kenneth_faried = nuggets.players.create!(name: "Kenneth Faried", status: "active", slug: "kenneth-faried")
    nuggets.players.each { |player| player.player_coaches.create(coach: mike_malone) }

############################blazers
    terry_stotts = blazers.coaches.create!(name: "Terry Stotts", slug: "terry-stotts")
      damian_lillard = blazers.players.create!(name: "Damian Lillard", status: "active", slug: "damian-lillard")
      cj_mccullum = blazers.players.create!(name: "CJ McCollum", status: "active", slug: "cj-mccullum")
      al_forouq_aminu = blazers.players.create!(name: "Al Forouq Aminu", status: "active", slug: "al-forouq-aminu")
      jusuf_nurkic = blazers.players.create!(name: "Jusuf Nurkic", status: "active", slug: "jusuf-nurkic")
      evan_turner = blazers.players.create!(name: "Evan Turner", status: "active", slug: "evan-turner")
    blazers.players.each { |player| player.player_coaches.create(coach: terry_stotts) }

############################mavericks
    rick_carlisle = mavericks.coaches.create!(name: "Rick Carlisle", slug: "rick-carlisle")
      jose_juan_barea = mavericks.players.create!(name: "JJ Barea", status: "active", slug: "jose-juan-barea")
      dirk_nowitzki = mavericks.players.create!(name: "Dirk Novitzki", status: "active", slug: "dirk-nowitzki")
      wesley_mathews = mavericks.players.create!(name: "Wesley Mathews", status: "active", slug: "wesley-mathews")
      harrison_barnes = mavericks.players.create!(name: "Harrison Barnes", status: "active", slug: "harrison-barnes")
      devin_harris = mavericks.players.create!(name: "Devin Harris", status: "active", slug: "devin-harris")
    mavericks.players.each { |player| player.player_coaches.create(coach: rick_carlisle) }
############################heat
    alvin_gentry = pelicans.coaches.create(name: "Alvin Gentry", slug: "alvin-gentry")
      # kemba_walker
      donatas_motiejunas = pelicans.players.create(name: "Donatas Motiejunas", status: "active", slug: "donatas-motiejunas")
      kendrick_perkins = pelicans.players.create(name: "Kendrick Perkins", status: "active", slug: "kendrick-perkins")
      omer_asik = pelicans.players.create(name: "Omer Asik", status: "active", slug: "omer-asik")
      # cody_zeller
      # marvin_williams
      pelicans.players.each { |player| player.player_coaches.create(coach: alvin_gentry) }
############################prev_players############################

cavaliers.team_players.create!(player: matthew_dellividova, current: false)

rockets.team_players.create!(player: donatas_motiejunas, current: false)
rockets.team_players.create!(player: omer_asik, current: false)

heat.team_players.create!(player: lebron_james, current: false)
heat.team_players.create!(player: dwayne_wade, current: false)

celtics.team_players.create!(player: evan_turner, current: false)
celtics.team_players.create!(player: tony_allen, current: false)
celtics.team_players.create!(player: rajon_rondo, current: false)
celtics.team_players.create!(player: david_lee, current: false)

hawks.team_players.create!(player: jeff_teague, current: false)
hawks.team_players.create!(player: al_horford, current: false)
# hawks.team_players.create!(player: devin_harris, current: false)

bulls.team_players.create!(player: taj_gibson, current: false)
bulls.team_players.create!(player: omer_asik, current: false)

spurs.team_players.create!(player: george_hill, current: false)
spurs.team_players.create!(player: boban_marjanovic, current: false)

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
# jazz.team_players.create!(player: devin_harris, current: false)

thunder.team_players.create!(player: reggie_jackson, current: false)

warriors.team_players.create!(player: harrison_barnes, current: false)
warriors.team_players.create!(player: david_lee, current: false)

pistons.team_players.create!(player: greg_monroe, current: false)
pistons.team_players.create!(player: brandon_jennings, current: false)

mavericks.team_players.create!(player: vince_carter, current: false)

raptors.team_players.create!(player: vince_carter, current: false)
raptors.team_players.create!(player: matt_barnes, current: false)

grizzlies.team_players.create!(player: matt_barnes, current: false)

nuggets.team_players.create!(player: jusuf_nurkic, current: false)

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
matthew_dellividova.player_coaches.create!(coach: tyron_lue, current: false)
jusuf_nurkic.player_coaches.create!(coach: mike_malone, current: false)
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
