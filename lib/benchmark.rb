require_relative 'bubble_sort'
require_relative 'insertion_sort'
require_relative 'merge_sort'


class Benchmark

start_time = Time.now
something = 5 + 5
end_time = Time.now
binding.pry

duration = end_time - start_time
binding.pry





end


# benchmark = SortingSuite::Benchmark.new
#
# benchmark.time(SortingSuite::InsertionSort, [3,3,4,5,1])
# => "InsertionSort took 0.004333 seconds"
#
# benchmark.time(SortingSuite::MergeSort)
# => "MergeSort took 0.000274 seconds"
#
# benchmark.fastest([2, 8, 1, 0, 5])
# => "MergeSort is the fastest"
#
# benchmark.slowest([1, 2, 3, 4, 5])
# => "BubbleSort is the slowest"
