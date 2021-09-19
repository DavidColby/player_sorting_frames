['Dallas Mavericks', 'LA Clippers', 'LA Lakers', 'San Antonio Spurs', 'Boston Celtics', 'Miami Heat', 'New Orleans Pelicans'].each do |name|
  Team.create(name: name)
end

100.times do
  Player.create(name: Faker::Name.name, team: Team.find(Team.pluck(:id).sample), seasons: rand(25))
end
