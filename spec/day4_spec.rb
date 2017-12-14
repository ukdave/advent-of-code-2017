# frozen_string_literal: true

require "day4"

describe Day4 do
  describe "#valid_passphrase?" do
    it "returns true if there are no duplicate words" do
      expect(subject.valid_passphrase? "aa bb cc dd ee").to eq true
      expect(subject.valid_passphrase? "aa bb cc dd aaa").to eq true
    end

    it "returns false if there are duplicate words" do
      expect(subject.valid_passphrase? "aa bb cc dd aa").to eq false
    end
  end

  describe "count_valid_passphrases" do
    it "returns the number of valid passphrasses" do
      expect(subject.count_valid_passphrases(["aa bb cc dd ee", "aa bb cc dd aaa", "aa bb cc dd aa"])).to eq 2
      expect(subject.count_valid_passphrases(File.readlines("fixtures/day4.txt"))).to eq 383
    end
  end
end
