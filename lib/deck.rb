class Deck
  attr_reader :cards
  def initialize(cards_argument)
      @cards = cards_argument
  end

  def rank_of_card_at(card) # no need to fill it with info from line 35 or 36!!! It is a place holder
     return 0 if @cards[card] == nil
    return @cards[card].rank
  end

  def high_ranking_cards
    face_cards = [] #becasue it is an array line 49 needs brackets to house potential responses
                    # even if it ends up with only 1 element returned it is the POTENTIAL to have many
                    # that creates the need for the bracket
    cards.each do |card|
      require "pry"; binding.pry
      if card.rank >= 11
        face_cards.push card
      end
    end
    face_cards
  end

  def percent_high_ranking
    ((high_ranking_cards.count / cards.count.to_f)*100).round(2)
  end

  def remove_card
    cards.shift
  end

  def add_card(new_card)
    cards.push new_card
  end
end
