# Here documents
# This is helpful for putting large amounts of text without worrying about escape sequences or string evaluation. “Here documents” begin with <<-. These are followed immediately by an identifier or string that specifies the ending delimiter. (No space is allowed, to prevent ambiguity with the left-shift operator.)The text of the string literal begins on the next line and continues until the text of the delimiter appears on a line by itself. For example:
# document = <<-HERE         # We begin with <<- followed by the ending delimiter HERE
# This is a string literal.
# It has two lines and abruptly ends with a newline...
# HERE

def single_quote
  # single quote string here
    'Hello World and others!'
end

def double_quote
  # Double quote string here
    "Hello World and others!"
end

def here_doc
  # Here doc string here
    <<-HERE
    Hello World and others!
    HERE
end
