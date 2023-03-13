def merge_sort(array, sorted = [])
    if array.length < 2
      array
    else
      first_half = array.slice(0..(array.length / 2 - 1))
      second_half = array.slice((array.length / 2)..-1)
      a = merge_sort(first_half)
      b = merge_sort(second_half)
      i = 0
      j = 0
      k = 0
      for i in i..(b.length + a.length - 1)
        if a[j] == nil
          sorted << b[k] 
          k += 1
        elsif b[k] == nil || a[j] < b[k]
          sorted << a[j]
          j += 1
        else
          sorted << b[k] 
          k += 1
        end
      end
      sorted
    end
  end
  
  p merge_sort([5,2,8,7,1,3,6,4])