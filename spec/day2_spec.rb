# frozen_string_literal: true

require "day2"

describe Day2 do
  describe "#checksum" do
    it "calculates the checksum of the spreadsheet" do
      expect(subject.checksum(["5 1 9 5", "7 5 3", "2 4 6 8"])).to eq 18
      expect(subject.checksum(File.readlines("fixtures/day2.txt"))).to eq 42_378
    end
  end

  describe "#checksum2" do
    it "calculates the checksum of the spreadsheet" do
      expect(subject.checksum2(["5 9 2 8", "9 4 7 3", "3 8 6 5"])).to eq 9
      expect(subject.checksum2(File.readlines("fixtures/day2.txt"))).to eq 246
    end
  end
end
