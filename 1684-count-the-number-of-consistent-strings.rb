# @param {String} allowed
# @param {String[]} words
# @return {Integer}
def count_consistent_strings(allowed, words)
  allowed_chars = allowed.chars
  words.count { |word| word.chars.all? { |w| allowed_chars.include? w } }
end
