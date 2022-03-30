# @param {Integer[]} nums
# @param {Integer[]} index
# @return {Integer[]}
def create_target_array(nums, index)
  arr = []
  nums.each_with_index { |num, i| arr[index[i], 1] = [num, arr[index[i]]].compact }
  arr
end
