# @param {String} s
# @return {Integer}
def balanced_string_split(s)
  d = 0
  ans = 0

  s.chars.each do |c|
    d += c == 'L' ? 1 : -1
    ans += 1 if d.zero?
  end

  ans
end
