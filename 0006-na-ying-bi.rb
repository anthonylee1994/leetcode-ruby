# @param {Integer[]} coins
# @return {Integer}
def min_count(coins)
  coins.map { |c| (c + 1) / 2 }.sum
end
