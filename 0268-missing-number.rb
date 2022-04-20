# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  ([*0..nums.size] - nums).first
end
