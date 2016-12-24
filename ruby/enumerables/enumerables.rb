#each

def iterate_colors(colors)
  ret = []
  colors.each do |color|
    ret << color
  end
  ret
end

#each_with_index

def skip_animals(animals, skip)
  ret = []
  animals.each_with_index do |animal, idx|
    ret << "#{idx}:#{animal}" unless idx < skip
  end
  ret
end

#collect - same as map

# #tr(str1, str2)
# "hello".tr('el', 'ip')
# => "hippo"

def rot13(secret_messages)
  secret_messages.map do |message|
    message.tr!("abcdefghijklmnopqrstuvwxyz", "nopqrstuvwxyzabcdefghijklm")
  end
end


#reduce
# tn = n**2 + 1, n > 0
def sum_terms(n)
  (1..n).reduce(0) {|sum, i| sum + (i**2 + 1}
end

#any, all, none, and find

#find returns the first element for which block is not false

def func_any(hash)
    # Check and return true if any key object within the hash is of the type Integer
    # If not found, return false.
    hash.any? {|key, value| key.is_a?(Integer)}
end

def func_all(hash)
    # Check and return true if all the values within the hash are Integers and are < 10
    # If not all values satisfy this, return false.
    hash.all? {|key, value| value.is_a?(Integer) && value < 10}
end

def func_none(hash)
    # Check and return true if none of the values within the hash are nil
    # If any value contains nil, return false.
    hash.none? {|key, value| value.nil? }
end

def func_find(hash)
    # Check and return the first object that satisfies either of the following properties:
    #   1. There is a [key, value] pair where the key and value are both Integers and the value is < 20
    #   2. There is a [key, value] pair where the key and value are both Strings and the value starts with `a`.
    hash.find {|key, value| key.is_a?(Integer) && value.is_a?(Integer) && value < 20 || key.is_a?(String) && value[0] == 'a'}
end


#group_by

def group_by_marks(marks, n)
  return marks.group_by do |key, value|
    if value < n
      "Failed"
    else
      "Passed"
    end
  end
end
