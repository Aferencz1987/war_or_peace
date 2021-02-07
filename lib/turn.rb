class Turn
  attr_reader :player1, :player2, :spoils_of_war#, :turn

  def initialize(player1_argument, player2_argument)
    @player1 = player1_argument
    @player2 = player2_argument
    @spoils_of_war = []
    #@turn = turn
  end

  def type
    p1_rank_0 = player1.deck.rank_of_card_at(0)
    p2_rank_0 = player2.deck.rank_of_card_at(0)
    p1_rank_2 = player1.deck.rank_of_card_at(2)
    p2_rank_2 = player2.deck.rank_of_card_at(2)

    if p1_rank_0 == p2_rank_0 &&
      p1_rank_2 == p2_rank_2
      :mutually_assured_destruction
    elsif p1_rank_0 == p2_rank_0
      :war
    else
      player1.deck.rank_of_card_at(0)!= player2.deck.rank_of_card_at(0)
      :basic
    end
  end

  def winner
    p1_rank_0 = player1.deck.rank_of_card_at(0)
    p2_rank_0 = player2.deck.rank_of_card_at(0)
    p1_rank_2 = player1.deck.rank_of_card_at(2)
    p2_rank_2 = player2.deck.rank_of_card_at(2)

    if type == :basic
      if p1_rank_0 > p2_rank_0
         @player1
      else p1_rank_0 < p2_rank_0
         @player2
      end

    elsif type == :war
      if p1_rank_2  > p2_rank_2
         @player1
      else p1_rank_2  < p2_rank_2
         @player2
      end

    elsif type == :mutually_assured_destruction

    return "No winner"
    end

  end


  def pile_cards

    if type == :basic
      spoils_of_war.push(@player1.deck.cards[0])
      spoils_of_war.push(@player2.deck.cards[0])


    elsif type == :war
      #I want the first, second, and third cards of both decks
      #to be pushed into the spoils_of_war array
      @spoils_of_war
      3.times do
        # spoils_of_war << player1.deck.remove_card
        spoils_of_war.push(player1.deck.cards[0])
      end
      3.times do
        # spoils_of_war << player2.deck.remove_card
      spoils_of_war.push(player1.deck.cards[0])
      end
      #times loop does the same as what is on line with spoils_of_war.push(player2.deck.card[0]) 3 times
      #when you push something out of spot 0 that means the thing
      #that replaces it is then in spot 0. Look up documentation for loops
      # spoils_of_war.push(player2.deck.cards[0])
      # spoils_of_war.push(player2.deck.cards[0])
      # spoils_of_war.push(player2.deck.cards[0])
#DONT LEAVE SPACES AFTER ._____ because it is its argument


# elsif @turn == :war
#     @spoils_of_war.push(player1.deck.cards[0], player1.deck.cards[1], player1.deck.cards[2])
#     @spoils_of_war.push(player2.deck.cards[0], player2.deck.cards[1], player2.deck.cards[2])
#     (1..3).each do
#       player1.deck.remove_card
#       player2.deck.remove_card
#     end



    else type == :mutually_assured_destruction
      player1.deck.cards.delete[0]
      player2.deck.cards.delete[0]
    end
  end

  def award_spoils(winner)
      if winner == @player1
          spoils_of_war.each do |spoil|
            player1.deck.cards << spoil
          end
          @spoils_of_war = []
          #player1.deck.cards.push(spoils_of_war)
      else
        spoils_of_war.each do |spoil|
          player2.deck.cards << spoil
        end
        @spoils_of_war = []

      end
  end
end
