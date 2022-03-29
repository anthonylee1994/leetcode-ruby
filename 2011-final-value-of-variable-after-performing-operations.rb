# @param {String[]} operations
# @return {Integer}
def final_value_after_operations(operations)
  operations.reduce(0) do |a, operation|
    a + (operation.include?('++') ? 1 : -1)
  end
end
