def merge_sort(array)
  if array.size > 1
    left = array[0...(array.size / 2)]
    right = array[(array.size / 2)..-1]
    
    sorted_left = merge_sort(left)
    sorted_right = merge_sort(right)
    merge(sorted_left, sorted_right)
  else
    [array.first]
  end
end


def merge(left, right)
  sorted_array = []
  until left.size == 0 || right.size == 0
    left.first < right.first ? sorted_array << left.shift : sorted_array << right.shift
  end
  
  until left.size == 0 && right.size == 0
    sorted_array << left.shift if left.first
    sorted_array << right.shift if right.first
  end

  sorted_array
end

p merge_sort([3,1])
p merge_sort([3,2,4])
p merge_sort([3,2,1,4,6,8,4,5,12,15, 27, 86, 93, 100, 42])