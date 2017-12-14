# frozen_string_literal: true

class Day5
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
end
