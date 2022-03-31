# @param {String} s
# @return {Boolean}
def is_valid(s)
  tag_pairs = ['()', '[]', '{}']
  tag_starts = tag_pairs.map { |p| p[0] }.join('')
  open_tags = []

  s.chars.each do |c|
    if tag_starts.include? c
      open_tags.push c
    elsif tag_pairs.include? [open_tags.last, c].join('')
      open_tags.pop
    else
      return false
    end
  end

  open_tags.empty?
end
