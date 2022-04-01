# @param {Integer} num
# @return {Integer}
def minimum_sum(num)
  digits = num.to_s.chars.map(&:to_i).sort
  10 * digits.first(2).sum + digits.last(2).sum
end
