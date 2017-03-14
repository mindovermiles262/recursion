def merge_sort(arr)
    #return "INVALID INPUT. Input array must be longer than 1 element" unless arr.class == Array && arr.length > 1
    return arr if arr.length == 1

    # break arrays into left/right
    midpt = (arr.length / 2) - 1
    left = arr[0..midpt]
    right = arr[midpt + 1..-1]

    # keep breaking arrays until arr.length == 1
    left = merge_sort(left)
    right = merge_sort(right)

    #merge arrays together
    merge(left, right)
end

def merge(l, r)
    merge_arr = Array.new

    #add array elements to new merged array smallest to largest
    while !l.empty? && !r.empty?
        merge_arr << (l.first < r.first ? l.shift : r.shift)
    end

    #add stragglers to array
    merge_arr + (l.empty? ? r : l )
end

# Testing
#puts merge_sort([8, 5, 3, 9, 1, 7]).inspect

