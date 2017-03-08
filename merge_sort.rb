def merge_sort(arr)
    return "INVALID INPUT. Input array must be longer than 1 element" unless arr.class == Array && arr.length > 1
    return "Valid"
end

# Testing
puts merge_sort(1)
puts merge_sort("A")
puts merge_sort([1])
puts merge_sort([1, 2])
puts merge_sort(Array.new(8) { |index| index + 1 })
