# @param {String[]} sentences
# @return {Integer}
def most_words_found(sentences)
  sentences.map { |sentence| sentence.count(' ') + 1 }.max
end
