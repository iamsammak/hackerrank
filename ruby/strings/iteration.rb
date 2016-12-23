# each_byte iterates sequentially through the individual bytes that comprise a string;
# each_char iterates the characters and is more efficient than [] operator or character indexing;
# each_codepoint iterates over the ordinal values of characters in the string;
# each_line iterates the lines.


# Challenge: Write the method count_multibyte_char which takes a string as input and returns the number of multibyte characters (byte size > 1) in it.

def count_multibyte_char(string)
  count = 0
  
  string.each_char {|char| count += 1 if char.bytesize > 1 }

  count
end
