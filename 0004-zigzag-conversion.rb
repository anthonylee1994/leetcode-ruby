# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  arr = []
  chars = s.chars

  return s if num_rows < 2

  x = y = i = 0

  while i < chars.size
    (num_rows - 1).times do
      arr[x] ||= []
      arr[x][y] = s[i]
      i += 1
      y += 1
    end

    while y.positive? && i < chars.size
      arr[x] ||= []
      arr[x][y] = s[i]
      i += 1
      x += 1
      y -= 1
    end
  end

  0.upto(num_rows - 1).map { |r| 0.upto(arr.count - 1).map { |c| arr[c][r] } }.flatten.compact.join('')
end
