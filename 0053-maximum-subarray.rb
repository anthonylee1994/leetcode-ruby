# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  (1...nums.length).reduce([nums.first]) { |sum, i| sum.push([nums[i], sum[i - 1] + nums[i]].max) }.max
end
