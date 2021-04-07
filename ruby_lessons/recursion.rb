# frozen_string_literal: false

# Factorial
# In math, the factorial of a non-negative integer n (n!) , is the product of all positive integers less <= n:

# example_format
# def recursive_factorial(n)
#   Base case
#   Recursive call
# end

# Define a recursive function that finds the factorial of a number.
def factorial(num)
  return 1 if num.zero?

  num * factorial(num - 1)
end

puts factorial(5)

# Define a recursive function that returns true if a string is a palindrome and false otherwise.
def palindrome(str)
  if str.length == 1 || str.length.zero?
    true
  elsif str[0] == str[-1]
    palindrome(str[1..-2])
  else
    false
  end
end

puts palindrome('303')

# Define a recursive function that takes an argument n and prints "n bottles of beer on the wall", "(n-1) bottles of beer on the wall".. "no more bottles of beer on the wall".

def bottles(num)
  puts 'No more bottles of coke on the wall' if num.zero?

  if num.positive?
    puts "#{num} bottles of coke on the wall"
    bottles(num - 1)
  end
end

bottles(3)

# Define a recursive function that takes an argument n and returns the fibonacci value of that position. The fibonacci sequence is 0, 1, 1, 2, 3, 5, 8, 13, 21... So fib(5) should return 5 and fib(6) should return 8.

def fibonacci(num)
  return 0 if num.zero?

  if num == 1
    1
  else
    fibonacci(num - 1) + fibonacci(num - 2)
  end
end

puts fibonacci(6)

# Define a recursive function that flattens an array. The method should convert [[1, 2], [3, 4]] to [1, 2, 3, 4] and [[1, [8, 9]], [3, 4]] to [1, 8, 9, 3, 4].

def flatten(array, result = [])
  array.each do |element|
    if element.is_a?(Array)
      flatten(element, result)
    else
      result << element
    end
  end
  result
end

p flatten([[1, [8, 9]], [3, 4]])

# Use the roman_mapping hash to define a recursive method that converts an integer to a Roman numeral.

roman_mapping = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}

# copied
def integer_to_roman(roman_mapping, number, result = "")
  return result if number == 0
  roman_mapping.keys.each do |divisor|
    quotient, modulus = number.divmod(divisor)
    result << roman_mapping[divisor] * quotient
    return integer_to_roman(roman_mapping, modulus, result) if quotient > 0
  end
end

p integer_to_roman(roman_mapping, 55)
