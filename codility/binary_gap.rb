# A binary gap within a positive integer N is any maximal sequence of consecutive zeros that is surrounded by ones at both ends in the binary representation of N.
#
# For example, number 9 has binary representation 1001 and contains a binary gap of length 2. The number 529 has binary representation 1000010001 and contains two binary gaps: one of length 4 and one of length 3. The number 20 has binary representation 10100 and contains one binary gap of length 1. The number 15 has binary representation 1111 and has no binary gaps.

def solution(n)
  # write your code in Ruby 2.2
  # mod to binary
  # split by '1' into array
  # iterate through array and return max length

  #but we shouldn't count the 0 at the end of a binary number
  #ex. 1000000
  #answer should be 0 - since there is no gap

  binary_num = '%b' % n
  zeroes = binary_num.split('1')

  zeroes.pop if n % 2 == 0 #this should get rid of the no gap at the end

  return 0 if zeroes.empty?
  zeroes.map { |i| i.length }.max
end
