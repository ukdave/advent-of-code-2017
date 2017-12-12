# frozen_string_literal: true

class Day1
  def solve input
    digits = input.chars.map(&:to_i)
    digits.push(digits.first).each_cons(2).reduce(0) {|acc, (a, b)| a == b ? acc + a : acc }
  end

  def solve2 input
    digits = input.chars.map(&:to_i)
    digits.each_with_index.select {|_, i| digits[i] == digits[wrap(i, digits.length)] }.map(&:first).reduce(0, &:+)
  end

  private

  def wrap idx, len
    (idx + (len / 2)) % len
  end
end
