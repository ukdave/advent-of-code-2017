# frozen_string_literal: true

class Day5Recursive
  def steps_to_escape maze_str
    maze = maze_str.map(&:to_i)
    steps_to_escape_r(0, 0, maze)
  end

  def steps_to_escape_2 maze_str
    maze = maze_str.map(&:to_i)
    steps_to_escape_2_r(0, 0, maze)
  end

  private

  def steps_to_escape_r pos, moves, maze
    return moves if pos >= maze.length
    steps = maze[pos]
    updated_maze = maze.dup.tap {|m| m[pos] += 1 }
    steps_to_escape_r(pos + steps, moves + 1, updated_maze)
  end

  def steps_to_escape_2_r pos, moves, maze
    return moves if pos >= maze.length
    steps = maze[pos]
    updated_maze = maze.dup.tap {|m| m[pos] += (steps >= 3 ? -1 : 1) }
    steps_to_escape_2_r(pos + steps, moves + 1, updated_maze)
  end
end
