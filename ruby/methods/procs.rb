# blocks are not objects and they cant be saved to variables
# but proc objects are blocks of code that can be bound to a set of local variables. you can think of a proc object as a "saved" blocks

# my_proc.call(a, b)

def square_of_sum (my_array, proc_square, proc_sum)
    sum = proc_sum.call(my_array)
    proc_square.call(sum)
end

proc_square_number = proc {|x| x**2}
proc_sum_array     = proc {|array| array.inject(0){|sum, x| sum + x}}
my_array = gets.split().map(&:to_i)

puts square_of_sum(my_array, proc_square_number, proc_sum_array)


# http://www.skorks.com/2013/04/ruby-ampersand-parameter-demystified/
# To summarize the article, Ruby allows implicit and explicit blocks. Moreover, Ruby has block, proc and lambda.
#
# When you call
#
# def foo(block)
# end
# block is just a simple argument of the method. The argument is referenced in the variable block, and how you interact with it depends on the type of object you pass.
#
# def foo(one, block, two)
#   p one
#   p block.call
#   p two
# end
#
# foo(1, 2, 3)
# 1
# NoMethodError: undefined method `call' for 2:Fixnum
#     from (irb):3:in `foo'
#     from (irb):6
#     from /Users/weppos/.rvm/rubies/ruby-2.1.5/bin/irb:11:in `<main>'
#
# foo(1, Proc.new { 1 + 1 }, 3)
# 1
# 2
# 3
# But when you use the ampersand & in the method definition, the block assumes a different meaning. You are explicitly defining a method to accept a block. And other rules will apply (such as no more than one block per method).
#
# def foo(one, two, &block)
#   p one
#   p block.call
#   p two
# end
# First of all, being a block, the method signature now accepts "two parameters and a block", not "three parameters".
#
# foo(1, 2, Proc.new { "from the proc" })
# ArgumentError: wrong number of arguments (3 for 2)
#     from (irb):7:in `foo'
#     from (irb):12
#     from /Users/weppos/.rvm/rubies/ruby-2.1.5/bin/irb:11:in `<main>'
# That means, you have to force the third argument to be a block passing the parameter with the ampersand.
#
# foo(1, 2, &Proc.new { "from the proc" })
# 1
# "from the proc"
# 2
# However, this is a very uncommon syntax. In Ruby, methods with blocks are generally called using {}
#
# foo(1, 2) { "from the block" }
# 1
# "from the block"
# 2
# or do end.
#
# foo(1, 2) do
#   "from the block"
# end
# 1
# "from the block"
# 2
# Let's jump back to the method definition. I previously mentioned that the following code is an explicit block declaration.
#
# def foo(one, two, &block)
#   block.call
# end
# Methods can implicitly accept a block. Implicit blocks are called with yield.
#
# def foo(one, two)
#   p yield
# end
#
# foo(1, 2) { "from the block" }
# You can check the block is passed using block_given?
#
# def foo(one, two)
#   if block_given?
#     p yield
#   else
#     p "No block given"
#   end
# end
#
# foo(1, 2) { "from the block" }
#  => "from the block"
#
# foo(1, 2)
#  => "No block given"
# These block-related features would not be available if you declare the "block" as a simple argument (hence without ampersand), because it would just be an anonimous method argument.
