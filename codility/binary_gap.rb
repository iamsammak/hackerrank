#binary gap


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
