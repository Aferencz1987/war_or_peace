class Deck
  attr_reader :cards
  def initialize(cards)
      @cards = cards
  end

  def rank_of_card_at(card) # no need to fill it with info from line 35 or 36!!! It is a place holder
    @cards[card].rank
  end

  def high_ranking_cards
    face_cards = []
    cards.each do |card|
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
