# @param {String} s
# @return {String[]}
def cells_in_range(s)
  first, last = s.split(':')

  first_letter, first_number = first.split('')
  first_number = first_number.to_i

  last_letter, last_number = last.split('')
  last_number = last_number.to_i

  (first_letter..last_letter).flat_map { |letter| (first_number..last_number).map { |number| "#{letter}#{number}" }  }
end
