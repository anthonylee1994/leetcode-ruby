# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_k_difference(nums, k)
  nums.each_with_index.map do |x, i|
    nums.each_with_index.filter do |y, j|
      (x - y).abs == k && i < j
    end.count
  end.sum
end
