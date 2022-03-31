# @param {String} s
# @return {Integer}
def roman_to_int(s)
  roman_map = { 'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000 }

  rtn = pre = 0

  s.each_char do |c|
    num = roman_map[c]
    rtn += num
    rtn -= (pre * 2) if num > pre
    pre = num
  end

  rtn
end
