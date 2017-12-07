# frozen_string_literal: true

class Day1
  def solve input
    digits = input.chars.map(&:to_i)
    digits.push(digits.first).each_cons(2).reduce(0) {|acc, (a, b)| a == b ? acc + a : acc }
  end
end
