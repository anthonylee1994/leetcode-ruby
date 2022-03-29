# @param {Integer[]} arr
# @return {Integer}
def sum_odd_length_subarrays(arr)
  (1..arr.size).step(2).flat_map { |n| 0.upto(arr.size - n).map { |i| arr.slice(i...(i + n)) } }.sum(&:sum)
end
