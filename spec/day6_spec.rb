# frozen_string_literal: true

require "day6"

describe Day6 do
  describe "#redistribute" do
    it "returns the number of redistribution steps" do
      expect(subject.redistribute([0, 2, 7, 0]).first).to eq 5
      expect(subject.redistribute([0, 5, 10, 0, 11, 14, 13, 4, 11, 8, 8, 7, 1, 4, 12, 11]).first).to eq 7864
    end

    it "returns the redistribution loop size" do
      expect(subject.redistribute([0, 2, 7, 0]).last).to eq 4
      expect(subject.redistribute([0, 5, 10, 0, 11, 14, 13, 4, 11, 8, 8, 7, 1, 4, 12, 11]).last).to eq 1695
    end
  end
end
