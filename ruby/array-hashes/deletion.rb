#pop, shift, delete_at, delete

# Delete all occurrences of a given element
#  > arr.delete(5)
#  => 5
#  > arr
#  => [6, 3, 1, 2, 4, 3, 3]

def end_arr_delete(arr)
    # delete the element from the end of the array and return the deleted element
    arr.pop
end

def start_arr_delete(arr)
    # delete the element at the beginning of the array and return the deleted element
    arr.shift
end

def delete_at_arr(arr, index)
    # delete the element at the position #index
    arr.delete_at(index)
end

def delete_all(arr, val)
    # delete all the elements of the array where element = val
    arr.delete(val)
end
