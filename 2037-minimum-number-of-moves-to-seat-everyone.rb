# @param {Integer[]} seats
# @param {Integer[]} students
# @return {Integer}
def min_moves_to_seat(seats, students)
  students.sort!
  seats.sort!
  seats.each_with_index.map { |s, i| (s - students[i]).abs }.sum
end
