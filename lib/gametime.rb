class Game
  attr_reader :player1, :player2
  def initialize(player1_argument, player2_argument)
    @player1 = player1_argument
    @player2 = player2_argument
    @turn_count = 0
  end 
end






#   When we start the game by running ruby war_or_peace_runner.rb, it should
# produce the following interaction from the command line:
#
# Welcome to War! (or Peace) This game will be played with 52 cards.
# The players today are Megan and Aurora.
# Type 'GO' to start the game!
# ------------------------------------------------------------------
# Then a user will be able to type GO, and a game will start. The user will then see each turn being played, like this:
#
# Turn 1: Megan won 2 cards
# Turn 2: WAR - Aurora won 6 cards
# Turn 3: *mutually assured destruction* 6 cards removed from play
# ...
# ...
# ...
# Turn 9324: Aurora won 2 cards
# *~*~*~* Aurora has won the game! *~*~*~*
# The game continues until one player has all cards in play, at which point, that player is declared the winner of the game! Hint: take a look at the classes that you have built already, is there a method that will help you determine when the game has been won? or lost?
#
# In this game, there is the possibility of no winner. In order to cut down the amount of time it takes to play each game, and ensure that the game eventually does end, only 1,000,000 turns will be allowed. If no player has all cards after 1,000,000 turns, the result of the game is a draw.
#
# Turn 1: Megan won 2 cards
# Turn 2: WAR - Aurora won 6 cards
# Turn 3: *mutually assured destruction* 6 cards removed from play
# ...
# ...
# ...
# Turn 1000000: Aurora won 2 cards
# ---- DRAW ----
