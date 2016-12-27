Ruby notes

Ruby::Strings
You can make the following observations about the above code:

The string literal creates an object which has several accessible methods.
The string has attached encoding information indicating it's an UTF-8 string.
A String's size corresponds to the umber of characters we see.
A String's bytesize corresponds to the actual space taken by the characters in memory (the ♥ symbol requires bytes instead of ).
Although  is the most popular (and recommended) encoding style for content, Ruby supports  other encodings (try  for the full list). With this in mind, we should learn how to convert between different encodings.

string = string.encode!(Encoding::UTF_8)
string.force_encoding(Encoding::UTF_8)
