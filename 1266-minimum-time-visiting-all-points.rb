# @param {Integer[][]} points
# @return {Integer}
def min_time_to_visit_all_points(points)
  (0...points.size - 1).reduce(0) do |sum, i|
    sum + [
      (points[i].first - points[i + 1].first).abs,
      (points[i].last - points[i + 1].last).abs
    ].max
  end
end
