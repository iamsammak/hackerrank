def solution(a)
  left_sums = sums_helper(a)
  a.reverse!
  right_sums = sums_helper(a)
  right_sums.reverse!

  a.each_with_index do |item, index|
    if left_sums[index] == right_sums[index + 1]
      return index
    end
  end

  return -1
end

def sums_helper(array)
  ret = [0]
  array.each_with_index do |item, index|
    ret[index + 1] = ret[index] + item
  end

  ret
end

#equilibrium index
#an equilibrium index is if the sum of nums to the left of current index is equal to the sum of the nums on the right_sums
#ex [-1,3,-4,5,1,-6,2,1]
#equi indexes are 1, 3, 7
