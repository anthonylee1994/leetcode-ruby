require 'matrix'
# @param {Integer[][]} grid
# @return {Integer}
def max_increase_keeping_skyline(grid)
  range = (0...grid.size)
  column_max_values = range.map { |i| range.map { |j| grid[j][i] }.max }
  row_max_values = range.map { |i| range.map { |j| grid[i][j] }.max }
  range.flat_map { |i| range.map { |j| [row_max_values[i], column_max_values[j]].min - grid[i][j] } }.sum
end
