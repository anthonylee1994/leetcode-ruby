# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  map = {}
  ans = nil
  nums.each_with_index do |num, i|
    if map.key? num
      ans = [map[num], i]
      break
    end

    map[target - num] = i
  end

  ans
end
