require "sinatra"
#require "sinatra/reloader"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"

set :bind, '0.0.0.0'  # bind to all interfaces

TeamData::ROLL_CALL.each do |team_name, team_players|
  Team.new(team_name.to_s)
  team_players.each do |position, player_name|
    Player.new(player_name, position.to_s, team_name.to_s)
  end
end

positions = TeamData::ROLL_CALL.map { |_, team_players| team_players.map(&:first) }.flatten.uniq

get "/" do
  erb :index
end

get "/teams" do
  @teams = Team.all
  erb :teams
end

get "/teams/:team_name" do
  @team = Team.find(params[:team_name])
  erb :team
end

get "/positions" do
  @positions = positions.map(&:to_s)
  erb :positions
end

get "/positions/:position_name" do
  @position_name = params[:position_name]
  @players = Player.all.select { |player| player.position == @position_name }
  erb :position
end

get "/players" do
  @players = Player.all
  erb :players
end

get "/players/:player_name" do
  @player = Player.find(params[:player_name])
  erb :player
end
