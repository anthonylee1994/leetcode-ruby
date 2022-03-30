# @param {Integer} num
# @return {Integer}
def number_of_steps(num)
  binary_num_str = num.to_s(2)
  binary_num_str.count('0') + binary_num_str.count('1') * 2 - 1
end