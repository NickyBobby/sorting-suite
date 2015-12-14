require 'pry'


class InsertionSort

  def sort(ins_arr)
    return ins_arr if ins_arr.length <= 1
    sorted = [ins_arr[0]]
    ins_arr.delete_at(0)
    insert(ins_arr, sorted)
    sorted
  end

  def insert(ins_arr, sorted)
    ins_arr.each do |n|
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
