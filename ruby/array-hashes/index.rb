# part 1

def element_at(arr, index)
    # return the element of the Array variable `arr` at the position `index`
    # arr.at(index) # or
    # arr[index]
    arr[index]
end

def inclusive_range(arr, start_pos, end_pos)
    # return the elements of the Array variable `arr` between the start_pos and end_pos (both inclusive)
    arr[start_pos..end_pos]
end

def non_inclusive_range(arr, start_pos, end_pos)
    # return the elements of the Array variable `arr`, start_pos inclusive and end_pos exclusive
    arr[start_pos...end_pos]
end

def start_and_length(arr, start_pos, length)
    # return `length` elements of the Array variable `arr` starting from `start_pos`
    arr[start_pos, length]
end

#part 2

def neg_pos(arr, index)
    # return the element of the array at the position `index` from the end of the list
    # Clue : arr[-index]
    arr[-index]
end

def first_element(arr)
    # return the first element of the array
    # arr.first
    arr.first
end

def last_element(arr)
    # return the last element of the array
    # arr.last
    arr.last
end

def first_n(arr, n)
    # return the first n elements of the array
    arr.take(n)
end

def drop_n(arr, n)
    # drop the first n elements of the array and return the rest
    arr.drop(n)
end
