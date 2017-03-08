def fibs(n)
    return "INVALID INPPUT. Integer must be > 0" unless n.class == Fixnum && n > 0

    iteration, low, high, fib = 1, 0, 1, 0      #set variables
    while (n - 1 > iteration)                   #run fibonacci sequence n times
        fib = low + high
        low = high
        high = fib
        iteration += 1
    end
    return fib                                  #return value of n'th fibonacci
end

def fibs_rec(n)
    return "INVALID INPPUT. Integer must be > 0" unless n.class == Fixnum && n > 0

    return 0 if n == 1                          #base case if n = 1
    return 1 if n == 2                          #base case if n = 2
    fibs_rec(n-2) + fibs_rec(n-1)               #run fibonacci sequence
end

# Testing:
puts " Fib A: #{fibs("A")}"
puts "Fib -1: #{fibs(-1)}"
puts " Fib 0: #{fibs(0)}"
puts " Fib 1: #{fibs(1)}"
puts " Fib 7: #{fibs(7)}"

puts " Rec A: #{fibs_rec("A")}"
puts "Rec -1: #{fibs_rec(-1)}"
puts " Rec 0: #{fibs_rec(0)}"
puts " Rec 1: #{fibs_rec(1)}"
puts " Rec 7: #{fibs_rec(7)}"