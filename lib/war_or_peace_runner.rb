require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'


card.new
deck.new
player1.new
player2.new

player1

users = User.all
users.each do |element|
  element.age = rand(10..99).to_s
  element.save!
end

card = Card.new
card.each do
