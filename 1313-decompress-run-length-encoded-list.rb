# @param {Integer[]} nums
# @return {Integer[]}
def decompress_rl_elist(nums)
  nums.each_slice(2).flat_map { |(freq, val)| [val] * freq }
end
