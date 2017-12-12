# frozen_string_literal: true

class Day2
  def checksum lines
    rows = lines.map {|line| line.split.map(&:to_i) }
    rows.map {|row| row_diff(row) }.reduce(0, &:+)
  end

  private

  def row_diff row
    row.minmax.reduce(&:-).abs
  end
end
