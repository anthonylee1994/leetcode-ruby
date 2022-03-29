# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
  nums.each_with_index.map { |_, i| nums.slice(..i).sum }
end