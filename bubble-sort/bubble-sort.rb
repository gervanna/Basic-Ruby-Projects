arr1 = [5,4,3,2,1,0]
arr2 = [8]
arr3 = [4,3,78,2,0,2]

def bubble_sort(array)
  array_length = array.length
  if array_length <= 1
    return array
  end

  sorting = true #condition to run the loop
  while sorting do

    switched = false #condition to stop the loop

    (array_length - 1).times do |x| #subtract one because arrays are zero-indexed
      
      if array[x] > array[x+1] 
        array[x], array[x+1] = array[x+1], array[x]
        switched = true
        # if current number is larger than the number beside it 
        # (the +1 indicates the increase in index to check other number
        # it switches the number is this condition is met
      end
    end
    sorting = switched 
    #sorting becomes whatever state switched is and after all #s are sorted 
    #switched becomes false hence sorting is also now false and while looop will end
    
  end
  
  array
    
end
p bubble_sort(arr1) #=> [0, 1, 2, 3, 4 ,5]
p bubble_sort(arr2) #=> [8]
p bubble_sort(arr3) #=> [0, 2, 2, 3, 4, 78]