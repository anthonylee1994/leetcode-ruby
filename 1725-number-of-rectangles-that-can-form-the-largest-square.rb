# @param {Integer[][]} rectangles
# @return {Integer}
def count_good_rectangles(rectangles)
  mins = rectangles.map(&:min)
  mins.count(mins.max)
end
