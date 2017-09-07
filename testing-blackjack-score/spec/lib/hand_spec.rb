require "spec_helper"

describe Hand do
  # These UTF-8 characters will be useful for making different hands:
  # '♦', '♣', '♠', '♥'

  let(:hand) { Hand.new([Card.new("♦",10), Card.new("♥","J")]) }
  let(:one_jack) { Hand.new([Card.new("♦","J")]) }
  let(:one_queen) { Hand.new([Card.new("♦","Q")]) }
  let(:one_king) { Hand.new([Card.new("♦","K")]) }
  let(:one_ace) { Hand.new([Card.new("♦","A")]) }
  let(:two_aces) { Hand.new([Card.new("♦","A"), Card.new("♦","A")]) }
  let(:ace_10_ace) { Hand.new([Card.new("","A"), Card.new("♦",10), Card.new("♦","A")])}
  let(:ace_10) { Hand.new([Card.new("♦","A"), Card.new("♦",10)]) }

  describe "#calculate_hand" do
    it "counts one Jack as 10" do
      expect(one_jack.calculate_hand).to eq(10)
    end

    it "counts one Queen as 10" do
      expect(one_queen.calculate_hand).to eq(10)
    end

    it "counts one King as 10" do
      expect(one_king.calculate_hand).to eq(10)
    end

    it "counts one Ace as 11" do
      expect(one_ace.calculate_hand).to eq(11)
    end

    it "counts two Aces as 12" do
      expect(two_aces.calculate_hand).to eq(12)
    end

    it "counts an Ace and a 10 as 21" do
      expect(ace_10.calculate_hand).to eq(21)
    end

    it "counts an Ace, 10, Ace hand as 12" do
      expect(ace_10_ace.calculate_hand).to eq(12)
    end
  end
end
