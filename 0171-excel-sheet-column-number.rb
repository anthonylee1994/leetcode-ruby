# @param {String} column_title
# @return {Integer}
def title_to_number(column_title)
  first_byte = 'A'.bytes.first
  arr = column_title.chars.map { |c| (c.bytes.first - first_byte + 1) }

  arr.reverse.each_with_index.reduce(0) do |acc, (char_code, i)|
    acc + char_code * (26**i)
  end
end
