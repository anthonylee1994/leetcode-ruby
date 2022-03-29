# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
  max_candies = candies.max
  candies.map { |c| c + extra_candies >= max_candies }
end
