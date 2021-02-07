class Deck
  attr_reader :cards
  def initialize(cards_argument)
      @cards = cards_argument
  end

  def rank_of_card_at(card)
    if @cards[card] == nil
           return 0
         else
    return @cards[card].rank
  end

  end

  def high_ranking_cards
      @cards.find_all do |card|
           card.rank >= 11
      end
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
