class Player
  attr_reader :name, :deck
  def initialize(name_argument, deck_argument)
    @name = name_argument
    @deck = deck_argument
    @has_lost = false
  end

  def has_lost?

    if deck.cards == []
      @has_lost = true
    else
      @has_lost
    end
  end
end
