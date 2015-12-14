

class BubbleSort

  def sort(bub_arr)
    swapped = true
    while swapped
       swapped = false
      0.upto(bub_arr.length - 2) do |n|
        if bub_arr[n] > bub_arr[n+1]
          bub_arr[n], bub_arr[n+1] = bub_arr[n+1], bub_arr[n]
          swapped = true
        end
      end
    end
    bub_arr
  end

end
