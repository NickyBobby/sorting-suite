require 'minitest/autorun'
require 'insertion_sort'

class InsertionSortTest < Minitest::Test

  def setup
    @sorter = InsertionSort.new
  end

  def test_new_object_gets_created_in_the_correct_class

    assert_equal InsertionSort, @sorter.class
  end

  def test_insertion_sort_will_correctly_sort_letters

    assert_equal ["a", "b", "c"], @sorter.sort(["b", "c", "a"])
  end

  def test_insertion_sort_will_correctly_sort_numbers

    assert_equal [1, 2, 3], @sorter.sort([2, 3, 1])
  end

  def test_insertion_sort_will_correctly_sort_numbers_in_reverse_order

    assert_equal [10, 15, 20, 25, 30], @sorter.sort([30, 25, 20, 15, 10])
    assert_equal [1, 2, 3, 4, 5], @sorter.sort([5, 4, 3, 2, 1])
  end

  def test_insertion_sort_will_correctly_sort_letters_in_reverse_order

    assert_equal ["w","x","y","z"], @sorter.sort(["z","y","x","w"])
    assert_equal ["a","b","c","d","e"], @sorter.sort(["e","d","c","b","a"])
  end

  def test_insertion_sort_will_correctly_sort_words

    assert_equal ["apple","banana","carrot","dandelion"], @sorter.sort(["dandelion","banana","apple","carrot"])
  end

  def test_insertion_sort_will_correctly_sort_words_that_start_with_the_same_letter

    assert_equal ["ball","banana","baseball","basketball"], @sorter.sort(["basketball","ball","baseball","banana"])
    assert_equal ["aardvark","android","apple","assertion"], @sorter.sort(["apple","android","assertion","aardvark"])
  end

  def test_insertion_sort_will_correctly_sort_large_numbers

    assert_equal [10001,11002,11103,11114], @sorter.sort([11114,11103,10001,11002])
  end

  def test_insertion_sort_will_correctly_sort_an_array_of_the_same_number

    assert_equal [1,1,1,1,1], @sorter.sort([1,1,1,1,1])
  end

  def test_insertion_sort_will_correctly_sort_an_array_of_the_same_letter

    assert_equal ["z","z","z","z"], @sorter.sort(["z","z","z","z"])
    assert_equal ["a", "a", "a", "a"], @sorter.sort(["a", "a", "a", "a"])
  end

  def test_insertion_sort_will_accept_an_empty_array

    assert_equal [], @sorter.sort([])
  end


end
