def quicksort(arr)
  def divide(left, right, arr)
    #base case
    if right<=left
      return
    end
    #recursive case
    
    pivot = right
    wall = left
    
    for curr in left..right-1
      if arr[curr] < arr[pivot]
        arr[curr], arr[wall] = arr[wall], arr[curr]
        wall += 1
      end
    end
    arr[wall], arr[pivot] = arr[pivot], arr[wall]
    
    divide(left, pivot-1, arr)
    divide(pivot+1, right, arr)
    
  end
  
  divide(0, arr.length-1, arr)
  return arr
end

quicksort([0, 7, 4, 3, 6, 5])