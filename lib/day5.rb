# frozen_string_literal: true

class Day5
  # rubocop:disable Metrics/MethodLength
  def steps_to_escape maze_str
    maze = maze_str.map(&:to_i)
    pos = 0
    moves = 0
    while pos < maze.length
      steps = maze[pos]
      maze[pos] += 1
      pos += steps
      moves += 1
    end
    moves
  end
  # rubocop:enable all

  # rubocop:disable Metrics/MethodLength
  def steps_to_escape_2 maze_str
    maze = maze_str.map(&:to_i)
    pos = 0
    moves = 0
    while pos < maze.length
      steps = maze[pos]
      maze[pos] += (steps >= 3 ? -1 : 1)
      pos += steps
      moves += 1
    end
    moves
  end
  # rubocop:enable all
end
