# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  ans = haystack.index(needle)
  ans.nil? ? -1 : ans
end
