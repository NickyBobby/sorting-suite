require 'minitest/autorun'
require 'insertion_sort'

class InsertionSortTest < Minitest::Test

  def setup
    @sorter = InsertionSort.new
  end

  def test_did_object_get_created_in_correct_class?

    assert_equal InsertionSort, @sorter.class
  end

  def test_does_the_sort_method_work_with_letters?

    assert_equal ["a", "b", "c"], @sorter.sort(["b", "c", "a"])
  end

  def test_does_the_sort_work_with_numbers?

    assert_equal [1, 2, 3], @sorter.sort([2, 3, 1])
  end

  def test_will_take_numbers_in_reverse_order

    assert_equal [1, 2, 3, 4, 5], @sorter.sort([5, 4, 3, 2, 1])
  end

  def test_will_sort_letters_in_reverse_order

    assert_equal ["a","b","c","d","e"], @sorter.sort(["e","d","c","b","a"])
  end

end
