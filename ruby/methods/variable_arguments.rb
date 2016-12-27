def full_name(first, *rest)
  first + ' ' + rest.join(' ')
end

#ruby uses the *args splat operator
#javascript uses the ...args spread operator
