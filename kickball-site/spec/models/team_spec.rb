require "spec_helper"

RSpec.describe Team do
  let(:astros) { Team.new("Astros") }
  let(:red_sox) { Team.new("Red Sox") }
  let(:zach) { Player.new("Zach Stone", "Pitcher", "Astros") }
  let(:zero) { Player.new("Zero Volts", "Shortstop", "Red Sox") }

  describe ".new" do
    it "take in a name" do
      expect(astros.name).to eq "Astros"
    end
  end

  describe ".all" do
    it "returns an array of all teams" do
      expect(Team.all).to include(astros)
      expect(Team.all).to include(red_sox)
    end
  end

  describe ".find" do
    it "returns a matching player" do
      expect(Team.find("Astros").name).to eq(astros.name)
    end
  end

  describe "#players" do
    it "returns all players on a team" do
      expect(astros.players.map(&:name)).to include(zach.name)
    end

    it "doesn't return a player who isn't on the team" do
      expect(astros.players.map(&:name)).not_to include(zero.name)
    end
  end
end
