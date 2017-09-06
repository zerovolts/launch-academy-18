class Card
  VALUE_STRINGS = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
  SUITS = %i(diamond club heart spade)
  SUIT_STRINGS = {
    diamond: "♦",
    club: "♣",
    heart: "♥",
    spade: "♠"
  }

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def card_type
    type_string = VALUE_STRINGS[@value]
    suit_string = SUIT_STRINGS[@suit]

    type_string + suit_string
  end

  def game_value
    case @value
      when 0 then 11
      when 10..12 then 10
      else @value + 1
    end
  end
end
