require 'pry'


class InsertionSort
  attr_accessor :ins_starting_time, :ins_ending_time, :ins_duration

  def initialize
    @ins_starting_time = ins_starting_time
    @ins_ending_time = ins_ending_time
    @ins_duration = ins_duration
  end

  def sort(ins_arr)
    sorted = [ins_arr[0]]
    ins_arr.delete_at(0)
    insert(ins_arr, sorted)
    return sorted
  end

  def insert(ins_arr, sorted)
    for n in ins_arr
      sorted_index = 0
      while sorted_index < sorted.length
        if n <= sorted[sorted_index]
          sorted.insert(sorted_index, n)
          break
        elsif sorted_index >= sorted.length - 1
          sorted.insert(sorted_index+1, n)
          break
        end
        sorted_index += 1
      end
    end
  end

end





sorter = InsertionSort.new
# => #<InsertionSort:0x007f81a19e94e8>
p sorter.sort(["d", "b", "a", "c"])
# => ["a", "b", "c", "d"]
p sorter.sort(["b", "c", "a"])
p sorter.sort([2, 3, 1])
p sorter.sort(["z", "y", "x"])
p sorter.sort([2, 1])
