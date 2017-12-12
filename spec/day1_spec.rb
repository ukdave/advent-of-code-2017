# frozen_string_literal: true

require "day1"

describe Day1 do
  describe "#solve" do
    it "solves captchas" do
      expect(subject.solve("1122")).to eq 3
      expect(subject.solve("1111")).to eq 4
      expect(subject.solve("1234")).to eq 0
      expect(subject.solve("91212129")).to eq 9
      expect(subject.solve(File.read("fixtures/day1.txt").strip)).to eq 1089
    end
  end

  describe "#solve2" do
    it "solves captchas" do
      expect(subject.solve2("1212")).to eq 6
      expect(subject.solve2("1221")).to eq 0
      expect(subject.solve2("123425")).to eq 4
      expect(subject.solve2("123123")).to eq 12
      expect(subject.solve2("12131415")).to eq 4
      expect(subject.solve2(File.read("fixtures/day1.txt").strip)).to eq 1156
    end
  end
end
