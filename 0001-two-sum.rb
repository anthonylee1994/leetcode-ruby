# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  map = {}
  nums.each_with_index do |num, i|
    return [map[num], i] if map.has_key? num

    map[target - num] = i
  end
end
