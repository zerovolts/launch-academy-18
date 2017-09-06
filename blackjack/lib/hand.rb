class Hand
  attr_reader :name
  
  def initialize(name)
    @cards = []
    @name = name
  end

  def score
    card_scores = @cards.map {|card| card.game_value}
    total_value = 0
    num_aces = 0

    card_scores.each do |card|
      if card == 11
        num_aces += 1
      end
      total_value += card
    end

    num_aces.times do
      if total_value > 21
        total_value -= 10
      end
    end

    total_value
  end

  def print_score
    puts "#{@name} score: #{score}"
    puts
  end

  def add_card(card)
    @cards.push(card)
  end
end
