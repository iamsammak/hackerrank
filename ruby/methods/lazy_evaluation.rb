# Lazy evaluation is an evaluation strategy that delays the assessment of an expression until its value is needed.
#
# Ruby  introduced a lazy enumeration feature. Lazy evaluation increases performance by avoiding needless calculations, and it has the ability to create potentially infinite data structures.
#
# Example:
#
# power_array = -> (power, array_size) do
#     1.upto(Float::INFINITY).lazy.map { |x| x**power }.first(array_size)
# end
#
# puts power_array.(2 , 4)    #[1, 4, 9, 16]
# puts power_array.(2 , 10)   #[1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
# puts power_array.(3, 5)     #[1, 8, 27, 64, 125]
# In this example, lazy avoids needless calculations to compute power_array.
# If we remove lazy from the above code, then our code would try to compute all  ranging from  to Float::INFINITY.
# To avoid timeouts and memory allocation exceptions, we use lazy. Now, our code will only compute up to first(array_size).

# palindromic_prime_nums = lambda do |n|
#   1.upto(Float::INFINITY).lazy.select do |i|
#     is_palindromic?(i) && is_prime?(i)
#   end.first(n)
# end
#
# def is_prime?(num)
#   return false if num < 2
#   (2..num).each do |i|
#     return false if num % i == 0
#   end
#   true
# end
#
# def is_palindromic?(num)
#   num == num.to_s.reverse.to_i
# end
#
# input = gets.to_i
# p palindromic_prime_nums.(input)

require 'prime'
p Prime.each.lazy.select{|x| x.to_s == x.to_s.reverse}.first(gets.to_i)
