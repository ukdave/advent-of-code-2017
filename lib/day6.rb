# frozen_string_literal: true

class Day6
  # rubocop:disable Metrics/MethodLength
  def redistribute banks
    history = [banks]
    loop do
      new_banks = cycle(history.last)
      break if history.include? new_banks
      history << new_banks
    end
    history.length
  end
  # rubocop:enable all

  private

  # rubocop:disable Metrics/MethodLength
  def cycle banks
    new_banks = banks.dup
    max_index = new_banks.index(new_banks.max)
    blocks = new_banks[max_index]
    new_banks[max_index] = 0
    i = max_index + 1
    (0...blocks).each do
      new_banks[i % new_banks.length] += 1
      i += 1
    end
    new_banks
  end
  # rubocop:enable all
end
