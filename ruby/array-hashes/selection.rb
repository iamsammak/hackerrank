#examples

#select, reject, drop_while

# > arr = [3, 4, 2, 1, 2, 3, 4, 5, 6]
# > arr.select {|a| a > 2}
# => [3, 4, 3, 4, 5, 6]
# > arr.reject {|a| a > 2}
# => [2, 1, 2]
# > arr
# => [3, 4, 2, 1, 2, 3, 4, 5, 6]
# > arr.drop_while {|a| a > 1} # removes elements till the block returns false for the first time
# => [1, 2, 3, 4, 5, 6]


def select_arr(arr)
  # select and return all odd numbers from the Array variable `arr`
  arr.select { |x| x.odd? }
end

def reject_arr(arr)
  # reject all elements which are divisible by 3
  arr.reject { |x| x % 3 == 0 }
end

def delete_arr(arr)
  # delete all negative elements
  arr.reject { |x| x < 0 }
end

def keep_arr(arr)
  # keep all non negative elements ( >= 0)
  arr.select { |x| x >= 0 }
end
