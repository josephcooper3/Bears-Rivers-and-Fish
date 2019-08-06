require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../river')

class BearTest < Minitest::Test

  def setup
    @bear = Bear.new("Baloo", "Black")
    @river = River.new("Water of Leith", ["Steve", "Jimmy", "Dave", "Mac the Mackerel", "Finn", "Salmonella", "Magikarp", "Troutington"])
  end

  def test_bear_has_name
    assert_equal("Baloo", @bear.name())
  end

  def test_bear_has_type
    assert_equal("Black", @bear.type())
  end

  def test_bear_stomach_is_empty
    assert_equal([], @bear.stomach())
  end

  def test_bear_has_eaten_fish
    @bear.eat_fish_from_river(@river, "Steve")
    assert_equal(["Steve"], @bear.stomach())
  end

  def test_eaten_fish_has_gone_from_river
    @bear.eat_fish_from_river(@river, "Steve")
    assert_equal(["Jimmy", "Dave", "Mac the Mackerel", "Finn", "Salmonella", "Magikarp", "Troutington"], @river.fish())
  end

end
