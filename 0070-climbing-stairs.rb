# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  return n if n <= 2

  2.upto(n - 1).reduce([1, 2]) { |sum, _| [sum.last, sum.first + sum.last] }.last
end
