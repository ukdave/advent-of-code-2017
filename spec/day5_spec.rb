# frozen_string_literal: true

require "day5"

describe Day5 do
  describe "#steps_to_escape" do
    it "returns the number of jumps to escape the maze" do
      expect(subject.steps_to_escape(["0", "3", "0", "1", "-3"])).to eq 5
      expect(subject.steps_to_escape(File.readlines("fixtures/day5.txt"))).to eq 343_467
    end
  end
end
