# @param {Integer[]} encoded
# @param {Integer} first
# @return {Integer[]}
def decode(encoded, first)
  encoded.reduce([first]) do |a, x|
    a.append(x ^ a.last)
  end
end
