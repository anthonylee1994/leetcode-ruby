# @param {Integer[]} nums
# @return {Integer}
def num_identical_pairs(nums)
  nums.each_with_index.map { |x, i| nums.each_with_index.count { |y, j| i < j && x == y } }.sum
end
