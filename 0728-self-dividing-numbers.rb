# @param {Integer} left
# @param {Integer} right
# @return {Integer[]}
def self_dividing_numbers(left, right)
  (left..right).filter do |x|
    digits = x.to_s.chars.map(&:to_i)

    !digits.include?(0) && digits.all? { |y| (x % y).zero? }
  end
end
