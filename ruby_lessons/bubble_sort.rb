# Build a method #bubble_sort that takes an array and returns a sorted array. 
# It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).

# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

# for each elt in list
#     look at current_elt and elt+1
#     if current_elt > elt + 1
#         move elt1 to left
# iterate through list n-1 times

def bubble_sort(array)
  idx = 0
  (array.length - 1).times do
    (array.length - 1).times do
        if array[idx + 1] < array[idx]
        array[idx], array[idx + 1] = array[idx + 1], array[idx]
        else
        array[idx]
        end
        idx += 1
    end
    idx = 0
  end
    p array
end

bubble_sort([5,4,3,2,1])
