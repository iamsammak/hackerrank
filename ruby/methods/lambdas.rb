#lambda or stabby lambda, ->


# http://stackoverflow.com/questions/1740046/whats-the-difference-between-a-proc-and-a-lambda-in-ruby
# One difference is in the way they handle arguments. Creating a proc using proc {} and Proc.new {} are equivalent. However, using lambda {} gives you a proc that checks the number of arguments passed to it. From ri Kernel#lambda:
#
# Equivalent to Proc.new, except the resulting Proc objects check the number of parameters passed when called.
# An example:
#
# p = Proc.new {|a, b| puts a**2+b**2 } # => #<Proc:0x3c7d28@(irb):1>
# p.call 1, 2 # => 5
# p.call 1 # => NoMethodError: undefined method `**' for nil:NilClass
# p.call 1, 2, 3 # => 5
# l = lambda {|a, b| puts a**2+b**2 } # => #<Proc:0x15016c@(irb):5 (lambda)>
# l.call 1, 2 # => 5
# l.call 1 # => ArgumentError: wrong number of arguments (1 for 2)
# l.call 1, 2, 3 # => ArgumentError: wrong number of arguments (3 for 2)
# In addition, as Ken points out, using return inside a lambda returns the value of that lambda, but using return in a proc returns from the enclosing block.
#
# lambda { return :foo }.call # => :foo
# return # => LocalJumpError: unexpected return
# Proc.new { return :foo }.call # => LocalJumpError: unexpected return
# So for most quick uses they're the same, but if you want automatic strict argument checking (which can also sometimes help with debugging), or if you need to use the return statement to return the value of the proc, use lambda.

# Write a lambda which takes an integer and square it
square      = lambda {|x| x**2}

# Write a lambda which takes an integer and increment it by 1
plus_one    = lambda {|x| x+1}

# Write a lambda which takes an integer and multiply it by 2
into_2      = lambda {|x| x * 2}

# Write a lambda which takes two integers and adds them
adder       = lambda {|x, y| x + y}

# Write a lambda which takes a hash and returns an array of hash values
values_only = lambda do |arr|
    a = []
    arr.each do |k, v|
        a << v
    end
    a
end


input_number_1 = gets.to_i
input_number_2 = gets.to_i
input_hash = eval(gets)

a = square.(input_number_1); b = plus_one.(input_number_2);c = into_2.(input_number_1);
d = adder.(input_number_1, input_number_2);e = values_only.(input_hash)

p a; p b; p c; p d; p e
