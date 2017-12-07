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
end
