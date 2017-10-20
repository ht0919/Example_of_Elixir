fb = fn
  0,0,_ -> "FizzBuzz"
  0,_,_ -> "Fizz"
  _,0,_ -> "Buzz"
  _,_,i -> i
end

fizzbuzz = fn n -> fb.(rem(n, 3), rem(n, 5), n) end
Enum.each 1..16, fn n -> IO.puts fizzbuzz.(n) end
