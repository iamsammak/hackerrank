def end_arr_add(arr, element)
    # Add `element` to the end of the Array variable `arr` and return `arr`
    arr.push(element)
end

def begin_arr_add(arr, element)
    # Add `element` to the beginning of the Array variable `arr` and return `arr`
    arr.unshift(element)
end

# insert allows one to add one or more elements starting from a given index (shifting elements after the given index in the process).
#  >x = [1,2]
#  >x.insert(1, 5, 6, 7)
#  => [1, 5, 6, 7, 2]

def index_arr_add(arr, index, element)
    # Add `element` at position `index` to the Array variable `arr` and return `arr`
    arr.insert(index, element)
end

def index_arr_multiple_add(arr, index)
    # add any two elements to the arr at the index
    arr.insert(index, 5, 6)
end
