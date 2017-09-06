class Hand
  attr_reader :name

  def initialize(name)
    @cards = []
    @name = name
  end

  def score
    card_scores = @cards.map {|card| card.game_value}
    num_aces = card_scores.select {|score| score == 11}.length
    total_value = card_scores.reduce(:+)

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
