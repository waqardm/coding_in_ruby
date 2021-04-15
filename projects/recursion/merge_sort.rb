def merge_sort(array)
  return array if array.length < 2

  middle = array.length / 2
  left = merge_sort(array[0...middle])
  right = merge_sort(array[middle..array.length])

  sorted = []
  left.first <= right.first ? sorted << left.shift : sorted << right.shift

  sorted + left + right
end

p merge_sort([10, 7])
