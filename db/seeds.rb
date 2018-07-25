require 'faker'

puts 'Creating 100 fake video games...'
12.times do
  game = VideoGame.new({
    name: Faker::Dota.team,
    description: Faker::Community.quotes,
    image_url: 'https://source.unsplash.com/random',
    genre: Faker::Gender.type,
    price: rand(30..80),
    rating: rand(0..10)
  })

  game.save
end
puts 'Finished!'