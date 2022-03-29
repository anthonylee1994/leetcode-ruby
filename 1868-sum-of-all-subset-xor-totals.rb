# @param {Integer[]} nums
# @return {Integer}
def subset_xor_sum(nums)
  combinations = 1.upto(nums.size).flat_map { |n| nums.combination(n).to_a }
  combinations.map { |combination| combination.reduce { |a, x| a ^ x } }.sum
end
