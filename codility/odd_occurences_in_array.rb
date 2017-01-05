#you are given an array with odd amount of nums
#find the index whose value is unique
#all other indexes' have values that are paired off with another index

def solution(a)
  # write your code in Ruby 2.2
  a.group_by { |num| num }
  .each_value do |value|
    return value[0] if value.length.odd?
  end
end
