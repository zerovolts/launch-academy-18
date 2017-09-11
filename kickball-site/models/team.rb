require_relative "./team_data"

class Team
  attr_reader :name

  @@teams = []

  def initialize(name)
    @name = name
    @@teams << self
  end

  def self.all
    @@teams
  end

  def self.find(team_name)
    index = @@teams.index { |team| team.name == team_name }
    @@teams[index]
  end

  def players
    Player.all.select { |player| player.team_name == @name }
  end
end
