require_relative "card"
require_relative "deck"
require_relative "hand"

class Game
  def initialize
    @player = Hand.new("Player")
    @computer = Hand.new("Dealer")
    @deck = Deck.new
  end

  def start
    puts "Welcome to Blackjack!"
    puts

    if player_turn == :bust
      puts "Bust! You lose..."
    else
      puts
      if computer_turn == :bust
        puts "Dealer busts! You win!"
      else
        puts "Dealer stands."
        puts
        if @player.score > @computer.score
          puts "You win!"
        else
          puts "You lose!"
        end
      end
    end
  end

  private

  def player_turn
    @deck.deal_hand(@player)

    while true
      print "Hit or stand (H/S): "
      move = gets.chomp.downcase
      puts

      if move == "s"
        @player.print_score
        break
      elsif move != "h"
        puts "Please provide a valid input."
        next
      end

      @deck.deal_card(@player)

      if @player.score > 21
        return :bust
      end
    end
  end

  def computer_turn
    @deck.deal_hand(@computer)

    while @computer.score < 17
      @deck.deal_card(@computer)
    end

    if @computer.score > 21
      :bust
    else
      @computer.score
    end
  end
end
