require './lib/card.rb'
require './lib/player'

class Deck
  attr_reader :cards, :high_rank_cards

  def initialize(cards)
    @cards = cards
    @high_rank_cards = []
  end

  def rank_of_card_at(index)
    return @cards[index].rank
  end

  def high_ranking_cards
    @cards.each do |card|
      if card.rank >= 11
        @high_rank_cards << (card)
      end
    end
    return @high_rank_cards
  end

  def percent_high_ranking
    @cards.each do |card|
      if card.rank >= 11
        @high_rank_cards << (card)
      end
    end
    percent = ((@high_rank_cards.count.to_f / @cards.count.to_f) * 100)
    return percent
  end

  def remove_card
    @cards.shift
  end

  def add_card(card)
    @cards.append(card)
  end
end

card1 = Card.new(:diamond, 'Queen', 12)
card2 = Card.new(:spade, '3', 3)
card3 = Card.new(:heart, 'Ace', 14)
cards = [card1, card2, card3]
deck = Deck.new(cards)
