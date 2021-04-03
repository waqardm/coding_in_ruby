# frozen_string_literal: true

def return_binding
  foo = 100
  binding
end

# puts return_binding.eval('foo')

def time
  start = Time.now
  yield
  Time.now - start
end

# puts time { 'a' * 1000000000 }

input = 3

case input
  in String then puts 'input was of type String'
  in Integer then puts 'input was of type Integer'
end

arr = [3,4]

case arr
  in [1,2] then puts :match
  in [3,4] then puts :no_match
end

case arr
  in [Integer, Integer] then puts :match
  in [String, String] then puts :no_match
end

arr = [1, 2, 3]

case arr
in [Integer, Integer, *]
  puts :match
end

case [1, 2, 3, [4, 5]]
in [1, 2, 3, [4, a] => arr]
  puts a
  p arr
end

case { a: 'apple', b: 'banana' }
in { a:, b: }
  puts a
  puts b
end

case { a: 'ant', b: 'ball', c: 'cat' }
in { a: 'ant', **rest }
  p rest
end
