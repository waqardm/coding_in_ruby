# // Split the array into halves and merge them recursively
def mergeSort(array) {
  return merge(mergeSort(left), mergeSort(right))
end

# // Compare the arrays item by item and return the concatenated result
def merge (left, right)
  result = []
  indexLeft = 0
  indexRight = 0

  while indexLeft < left.length && indexRight < right.length do
    if left[indexLeft] < right[indexRight]
      result << left[indexLeft]
      indexLeft + 1
    else
      result << right[indexRight]
      indexRight + 1
    end
  end

  return result.concat(left.slice(indexLeft)).concat(right.slice(indexRight))
end


arrayOfNumbers = [2, 5, 1, 3, 7, 4, 2, 3, 9, 8, 6, 3]
mergeSort(arrayOfNumbers)
