# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  strs_chars = strs.map(&:chars)
  last_index = strs_chars.first.each_with_index.to_a.index { |c, i| !strs_chars.all? { |s| s[i] == c } }

  strs_chars.first[...last_index].join('')
end
