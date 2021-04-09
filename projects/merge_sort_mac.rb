# frozen_string_literal: false

array = [10, 9, 4, 5, 39]

def merge_sort(arr)
  # base case
  return arr if arr.empty?

  # Recursive case. First, divide the list into equal-sized sublists
  arr.each_slice((arr.size / 2.0).round).to_a
  # consisting of the first half and second half of the list. This assumes lists start at index 0.
  left = []
  right = []

  arr.each do |_item, index|
    index < (arr.length / 2) ? left << index : right << index
    left = merge_sort(left)
    right = merge_sort(right)
  end
  merge(left, right)
end

p merge_sort(array)

def merge(left, right)
  result = []

  left.first <= right.first ? left.first << result : right.first << result # while left.!empty? && right.empty?
  
  left.first << result while left.!empty?
  right.first << result while right.!empty?
end
