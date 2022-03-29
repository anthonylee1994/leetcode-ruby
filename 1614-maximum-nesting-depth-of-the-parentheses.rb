# @param {String} s
# @return {Integer}
def max_depth(s)
  depth = 0
  s.chars.map do |c|
    case c
    when '('
      depth += 1
    when ')'
      depth -= 1
    end

    depth
  end.max
end
