
# => #<BubbleSort:0x007f81a19e94e8>
# => ["a", "b", "c", "d"]



class BubbleSort

  def sort(bub_arr)
    swapped = true
     while swapped
       swapped = false
       0.upto(bub_arr.size-2) do |n|
          if bub_arr[n] > bub_arr[n+1]
            bub_arr[n], bub_arr[n+1] = bub_arr[n+1], bub_arr[n]
            swapped = true
          end
        end
      end
     bub_arr
  end
  
end

sorter = BubbleSort.new
nahhh = BubbleSort.new
sorter.sort(["d", "b", "a", "c"])
sorter.sort(["z", "v", "k", "M", "t", "b", "c", "a"])
nahhh.sort([37, 46, 20, 1, 28, 56])
sorter.sort(["boy", "chad", "Boyd", "break", "breakfast"])
