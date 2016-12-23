#initialization

empty_hash = Hash.new

default_hash = Hash.new(1)

hackerrank = { "simmy" => 100, "vivmbbs" => 200 }


#each

def iter_hash(hash)
  hash.each do |k, v|
    puts k
    puts v
  end
end

#addition, deletion, selection

# For destructive selection and deletion, we can use keep_if and delete_if as seen in Array-Selection
#
# > h = {1 => 1, 2 => 4, 3 => 9, 4 => 16, 5 => 25}
#  => {1 => 1, 2 => 4, 3 => 9, 4 => 16, 5 => 25}
# > h.keep_if {|key, value| key % 2 == 0} # or h.delete_if {|key, value| key % 2 != 0}
#  => {2 => 4, 4 => 16}

# hackerrank[543121] = 100

hackerrank.keep_if { |k, v| v.is_a?(Integer) }

hackerrank.delete_if { |k, v| v.even? }
# need to store after the deletion above
hackerrank.store(543121, 100)
