# @param {String[][]} items
# @param {String} rule_key
# @param {String} rule_value
# @return {Integer}
def count_matches(items, rule_key, rule_value)
  rule_keys = %w[type color name]

  items.count { |item| item[rule_keys.index(rule_key)] == rule_value }
end
