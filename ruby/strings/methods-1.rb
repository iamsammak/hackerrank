# String.chomp(Separator=$/)
# Returns a new string with the given separator removed from the end of the string (if present). If $/ has not been changed from the default Ruby record separator, then chomp also removes carriage return characters (that is, it will remove \n, \r, and \r\n).

#String.strip
# Returns a new string with the leading and trailing whitespace removed.

#String.chop
# Returns a new string with the last character removed. Note that carriage returns (\n, \r\n) are treated as single character and, in the case they are not present, a character from the string will be removed.

# In this challenge, your task is to code a process_text method, which takes an array of strings as input and returns a single joined string with all flanking whitespace and new lines removed. Each string has to be separated by a single space.

def process_text(array)
  result = array.map { |string| string.strip }
  result.join(" ")
end
