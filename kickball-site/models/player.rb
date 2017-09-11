require_relative "./team_data"

class Player
  attr_reader :name, :position, :team_name

  @@players = []

  def initialize(name, position, team_name)
    @name = name
    @position = position
    @team_name = team_name

    @@players << self
  end

  def self.all
    @@players
  end

  def self.find(player_name)
    index = @@players.index { |player| player.name == player_name }
    @@players[index]
  end
end
