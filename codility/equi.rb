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


# A zero-indexed array A consisting of N integers is given. An equilibrium index of this array is any integer P such that 0 ≤ P < N and the sum of elements of lower indices is equal to the sum of elements of higher indices, i.e.
# A[0] + A[1] + ... + A[P−1] = A[P+1] + ... + A[N−2] + A[N−1].
# Sum of zero elements is assumed to be equal to 0. This can happen if P = 0 or if P = N−1.
#
# For example, consider the following array A consisting of N = 8 elements:
#
#   A[0] = -1
#   A[1] =  3
#   A[2] = -4
#   A[3] =  5
#   A[4] =  1
#   A[5] = -6
#   A[6] =  2
#   A[7] =  1
# P = 1 is an equilibrium index of this array, because:
#
# A[0] = −1 = A[2] + A[3] + A[4] + A[5] + A[6] + A[7]
# P = 3 is an equilibrium index of this array, because:
#
# A[0] + A[1] + A[2] = −2 = A[4] + A[5] + A[6] + A[7]
# P = 7 is also an equilibrium index, because:
#
# A[0] + A[1] + A[2] + A[3] + A[4] + A[5] + A[6] = 0
# and there are no elements with indices greater than 7.
