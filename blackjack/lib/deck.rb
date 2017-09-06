require_relative "card"

class Deck
  def initialize
    @cards = (Card::SUITS.map do |suit|
      (0..12).map do |value|
        Card.new(suit, value)
      end
    end).flatten.shuffle
  end

  def deal_card(hand)
    add_card_to_hand(hand)
    hand.print_score
  end

  def deal_hand(hand)
    2.times { add_card_to_hand(hand) }
    hand.print_score
  end

  private

  def add_card_to_hand(hand)
    card = @cards.pop
    hand.add_card(card)

    puts "#{hand.name} was dealt #{card.card_type}"
  end
end
