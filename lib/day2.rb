# frozen_string_literal: true

class Day2
  def checksum lines
    rows = lines.map {|line| line.split.map(&:to_i) }
    rows.map {|row| row_diff(row) }.reduce(0, &:+)
  end

  def checksum2 lines
    rows = lines.map {|line| line.split.map(&:to_i) }
    rows.map {|row|
      divs = row_divisibles(row)
      divs.first / divs.last
    }.reduce(0, &:+)
  end

  private

  def row_diff row
    row.minmax.reduce(&:-).abs
  end

  def row_divisibles row
    row.flat_map {|d|
      div = divisor(d, row - [d])
      div.nil? ? nil : [div, d]
    }.compact
  end

  def divisor num, arr
    arr.find {|x| (x % num).zero? }
  end
end
