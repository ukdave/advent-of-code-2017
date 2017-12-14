# frozen_string_literal: true

class Day4
  def valid_passphrase? passphrase
    words = passphrase.split
    words.uniq.length == words.length
  end

  def count_valid_passphrases passphrasses
    passphrasses.select {|p| valid_passphrase? p }.count
  end

  def valid_passphrase_2? passphrase
    words = passphrase.split
    sorted_words = words.map {|w| w.chars.sort.join }
    sorted_words.uniq.length == sorted_words.length
  end

  def count_valid_passphrases_2 passphrasses
    passphrasses.select {|p| valid_passphrase_2? p }.count
  end
end
