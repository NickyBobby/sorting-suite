require 'minitest/autorun'
require 'bubble_sort'

class BubbleSortTest < Minitest::Test

  def test_does_it_create_the_correct_class?
    sorter = BubbleSort.new

    assert_equal BubbleSort, sorter.class
  end

  def test_will_it_sort_letters?
    sorter = BubbleSort.new

    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
    assert_equal ["w", "x", "y", "z"], sorter.sort(["z", "x", "w", "y"])
  end

  def test_will_it_sort_numbers?
    sorter = BubbleSort.new

    assert_equal [1, 2, 3, 4, 5], sorter.sort([5, 4, 3, 2, 1])
    assert_equal [17, 20, 25, 45, 60], sorter.sort([60, 20, 25, 17, 45])
  end

  def test_but_will_it_take_letters_and_numbers?
    skip
    sorter = BubbleSort.new

    assert_equal [1, 2, 3, "a", "b", "c"], sorter.sort(["c", 3, "a", "b", 2, 1])
  end

  def test_will_it_sort_uppper_case_and_lower_case_letters?
    sorter = BubbleSort.new

    assert_equal ["A", "B", "C", "a", "b", "c"], sorter.sort(["b", "A", "c", "B", "a", "C"])
  end

  def test_will_it_accept_an_array_of_the_same_letter?
    sorter = BubbleSort.new

    assert_equal ["a", "a", "a", "a"], sorter.sort(["a", "a", "a", "a"])
  end

  def test_will_you_risk_your_life_to_save_a_whale?
    sorter = BubbleSort.new

    assert true
  end

end
