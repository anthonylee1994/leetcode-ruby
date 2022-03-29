# @param {Integer[][]} edges
# @return {Integer}
def find_center(edges)
  edges.reduce { |a, x| a & x }.first
end