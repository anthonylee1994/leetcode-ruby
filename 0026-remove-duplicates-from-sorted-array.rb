# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return nums.length if nums.length < 2

  (nums.length - 1).downto(0) { |index| nums.delete_at(index) if nums.index(nums[index]) != index }
  nums.length
end
