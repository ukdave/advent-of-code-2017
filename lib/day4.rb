# frozen_string_literal: true

class Day4
  def valid_passphrase? passphrase
    words = passphrase.split
    words.uniq.length == words.length
  end

  def count_valid_passphrases passphrasses
    passphrasses.select {|p| valid_passphrase? p }.count
  end
end
