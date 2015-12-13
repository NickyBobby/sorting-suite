require 'minitest/autorun'
require 'bubble_sort'

class BubbleSortTest < Minitest::Test

  def setup
    @sorter = BubbleSort.new
  end

  def test_new_object_gets_created_in_the_correct_class

    assert_equal BubbleSort, @sorter.class
  end

  def test_bubble_sort_will_correctly_sort_letters

    assert_equal ["a", "b", "c", "d"], @sorter.sort(["d", "b", "a", "c"])
    assert_equal ["w", "x", "y", "z"], @sorter.sort(["z", "x", "w", "y"])
  end

  def test_bubble_sort_will_correctly_sort_numbers?

    assert_equal [1, 2, 3, 4, 5], @sorter.sort([5, 4, 3, 2, 1])
    assert_equal [17, 20, 25, 45, 60], @sorter.sort([60, 20, 25, 17, 45])
  end

  def test_bubble_sort_will_correctly_sort_upper_case_and_lower_case_letters

    assert_equal ["A", "B", "C", "a", "b", "c"], @sorter.sort(["b", "A", "c", "B", "a", "C"])
  end

  def test_bubble_sort_will_correctly_sort_letters_in_reverse_order

    assert_equal ["a","b","c","d","e"], @sorter.sort(["e","d","c","b","a"])
  end

  def test_bubble_sort_will_correctly_sort_words

    assert_equal ["apple","banana","carrot","dandelion"], @sorter.sort(["dandelion","banana","apple","carrot"])
  end

  def test_bubble_sort_will_correctly_sort_words_that_start_with_the_same_letter

    assert_equal ["aardvark","android","apple","assertion"], @sorter.sort(["apple","android","assertion","aardvark"])
  end

  def test_bubble_sort_will_correctly_sort_large_numbers

    assert_equal [10001,11002,11103,11114], @sorter.sort([11114,11103,10001,11002])
  end

  def test_bubble_sort_will_correctly_sort_an_array_of_the_same_letter

    assert_equal ["a", "a", "a", "a"], @sorter.sort(["a", "a", "a", "a"])
  end

  def test_bubble_sort_will_correctly_sort_an_array_of_the_same_numbers

    assert_equal [1,1,1,1,1], @sorter.sort([1,1,1,1,1])
  end


end
