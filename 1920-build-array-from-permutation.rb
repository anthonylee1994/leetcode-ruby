# @param {Integer[]} nums
# @return {Integer[]}
def build_array(nums)
  nums.each_with_index.map { |_num, index| nums[nums[index]] }
end
