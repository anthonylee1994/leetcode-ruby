# @param {String} sentence
# @return {Boolean}
def check_if_pangram(sentence)
  ('a'..'z').all? { |c| sentence.chars.include? c }
end