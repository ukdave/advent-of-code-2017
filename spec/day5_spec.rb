# frozen_string_literal: true

require "day5"

describe Day5 do
  describe "#steps_to_escape" do
    it "returns the number of jumps to escape the maze" do
      expect(subject.steps_to_escape(["0", "3", "0", "1", "-3"])).to eq 5
      expect(subject.steps_to_escape(File.readlines("fixtures/day5.txt"))).to eq 343_467
    end
  end

  describe "#steps_to_escape_2" do
    it "returns the number of jumps to escape the maze" do
      expect(subject.steps_to_escape_2(["0", "3", "0", "1", "-3"])).to eq 10
      expect(subject.steps_to_escape_2(File.readlines("fixtures/day5.txt"))).to eq 24_774_780
    end
  end
end
