combination = lambda do |n|  # ->(n) do
  n_factorial = (1..n).inject(:*) || 1
  lambda do |r|  # -> (r) do
    r_factorial = (1..r).inject(:*) || 1
    n_factorial / (r_factorial * ((1..(n - r)).inject(:*) || 1 ))
  end
end

n = gets.to_i
r = gets.to_i
nCr = combination.(n)
puts nCr.(r)
