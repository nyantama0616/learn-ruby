require_relative "lib/MyIO"

def fizz_buzz(x)
  if x % 15 == 0
    'FizzBuzz'
  elsif x % 3 == 0
    'Fizz'
  elsif x % 5 == 0
    'Buzz'
  else
    x.to_s
  end
end

x = MyIO.input("input a number").to_i
puts fizz_buzz(x)
