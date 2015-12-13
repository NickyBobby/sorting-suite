require 'minitest/autorun'
require 'pry'
require 'merge_sort'

class MergeSortTest < Minitest::Test

  def setup
    @sorter = MergeSort.new
  end

  def test_new_object_is_of_the_correct_class
    assert_equal MergeSort, @sorter.class
  end

  def test_merge_sort_will_correctly_sort_numbers
    assert_equal [6,7,8,9], @sorter.sort([8,7,9,6])
    assert_equal [1,2,3,4], @sorter.sort([4,2,3,1])
  end

  def test_merge_sort_will_correctly_sort_letters
    assert_equal ["w","x","y","z"], @sorter.sort(["x","w","z","y"])
    assert_equal ["a","b","c","d"], @sorter.sort(["d","b","c","a"])
  end

  def test_merge_sort_will_correctly_sort_words
    assert_equal ["apple","banana","carrot","dandelion"], @sorter.sort(["dandelion","banana","apple","carrot"])
  end

  def test_merge_sort_will_correctly_sort_words_that_start_with_the_same_letter
    assert_equal ["aardvark","android","apple","assertion"], @sorter.sort(["apple","android","assertion","aardvark"])
  end

  def test_merge_sort_will_correctly_sort_large_numbers
    assert_equal [10001,11002,11103,11114], @sorter.sort([11114,11103,10001,11002])
  end

  def test_merge_sort_will_correctly_sort_an_array_of_the_same_numbers
    assert_equal [1,1,1,1,1], @sorter.sort([1,1,1,1,1])
  end

end
