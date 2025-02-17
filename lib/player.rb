require './lib/card'
require './lib/deck'

class Player
  attr_reader :name,
              :deck

  def initialize(name, deck)
    @name = name
    @deck = deck
  end

  def has_lost?
    @deck.cards == []
  end

  def remove_card
    deck.cards.shift
  end
end
