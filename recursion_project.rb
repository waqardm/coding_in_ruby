# frozen_string_literal: false

# Write a method #fibs which takes a number and returns that many members of the fibonacci sequence. Use iteration for this solution.

def fibs(num)
  array = []
  0.upto(num) do |i|
    array << i if i.zero? || i == 1
    array << array[i - 1] + array[i - 2] if i > 1
  end
  array
end

# Now write another method #fibs_rec which solves the same problem recursively. This can be done in just 3 lines (or 1 if you’re crazy, but don’t consider either of these lengths a requirement… just get it done).

def fibs_rec(num)
  # base cases 0 and 1
  return [0] if num.zero?
  return [0, 1] if num == 1

  array = fibs_rec(num - 1)
  array << array[-2] + array[-1]
end

p fibs_rec(8)
