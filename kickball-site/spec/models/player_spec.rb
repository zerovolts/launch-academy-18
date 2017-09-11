require "spec_helper"

RSpec.describe Player do
  let(:player1) { Player.new("Zach Stone", "Pitcher", "Astros") }
  let(:player2) { Player.new("Zero Volts", "Shortstop", "Red Sox") }

  describe ".new" do
    it "take in a name, position, and team_name" do
      expect(player1.name).to eq "Zach Stone"
      expect(player1.position).to eq "Pitcher"
      expect(player1.team_name).to eq "Astros"
    end
  end

  describe ".all" do
    it "returns an array of all players" do
      expect(Player.all).to include(player1)
      expect(Player.all).to include(player2)
    end
  end

  describe ".find" do
    it "returns a matching player" do
      expect(Player.find("Zach Stone").name).to eq(player1.name)
    end
  end
end
