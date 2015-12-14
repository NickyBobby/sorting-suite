require 'pry'

class MergeSort

  def sort(m_arr)
    return m_arr if m_arr.length <= 1
    mid = (m_arr.length / 2)
    left_slice = sort(m_arr[0, mid])
    right_slice = sort(m_arr[mid, m_arr.length])
    merge(left_slice, right_slice)
  end

  def merge(left, right)
    sorted = []
    until left.empty? || right.empty?
      sorting_arrays(sorted, left, right)
    end
    sorted + left + right
  end

  def sorting_arrays(sorted, left, right)
    if left.first < right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end

end
