# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  nums.each_with_index { |c, i| return i if c >= target }
  nums.size
end
