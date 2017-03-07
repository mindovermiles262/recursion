def fibs(n)
    return 0 if n == 0
    return 1 if n == 1              # => 1
    fibs(n) + fibs(n-1)
    #return fibs(1) + 1 if   n == 2  # => 2
    #return fibs(2) + 1 if   n == 3  # => 3
    #return fibs(3) + 2 if   n == 4  # => 5
    #return fibs(4) + 3 if   n == 5  # => 8
    #return fibs(5) + 5 if   n == 6  # => 13
    #return fibs(6) + 8 if   n == 7  # => 21
end

puts(fibs(1))
puts(fibs(2))
puts(fibs(3))
puts(fibs(4))
puts(fibs(5))
puts(fibs(6))
puts(fibs(7))