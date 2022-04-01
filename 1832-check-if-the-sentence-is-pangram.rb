# @param {String} sentence
# @return {Boolean}
def check_if_pangram(sentence)
  sentence.chars.uniq.size == 26
end
