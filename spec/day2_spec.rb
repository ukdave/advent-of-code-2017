# frozen_string_literal: true

require "day2"

describe Day2 do
  describe "#checksum" do
    it "calculates the checksum of the spreadsheet" do
      expect(subject.checksum(["5 1 9 5", "7 5 3", "2 4 6 8"])).to eq 18
      expect(subject.checksum(File.readlines("fixtures/day2.txt"))).to eq 42_378
    end
  end
end
