require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class BearTest < Minitest::Test

  def setup
    @bear = Bear.new("Baloo", "Black")
    @fish = Fish.new("Steve")
    @river = River.new("Water of Leith", 53000)
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
    @bear.eat_fish_from_river(@river, @fish)
    assert_equal(["Steve"], bear.stomach())
  end

end
