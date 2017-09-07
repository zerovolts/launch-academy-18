require_relative 'deck'

class Hand
  def initialize(cards)
    @cards = cards
  end

  def calculate_hand
    card_scores = @cards.map do |card|
      case card.value
        when "A" then 11
        when "J", "Q", "K" then 10
        else card.value
      end
    end

    num_aces = card_scores.select {|score| score == 11}.length
    total_value = card_scores.reduce(:+)

    num_aces.times do
      if total_value > 21
        total_value -= 10
      end
    end
    total_value
  end
end

deck = Deck.new
cards = deck.deal(2)
hand = Hand.new(cards)
# hand.calculate_hand # Get this working properly
