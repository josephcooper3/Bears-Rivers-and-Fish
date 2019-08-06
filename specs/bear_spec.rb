require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class BearTest < Minitest::Test

  def setup
    @bear = Bear.new("Baloo", "Black")
    @fish1 = Fish.new("Finn")
    @fish2 = Fish.new("Captain Haddock")
    @fish3 = Fish.new("Magikarp")
    @fish4 = Fish.new("Mack the Mackerel")
    @fish5 = Fish.new("Steve")
    @river = River.new("Water of Leith", [@fish1, @fish2, @fish3, @fish4, @fish5])
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
    assert_equal(true, @bear.stomach().include?("Steve"))
  end

  def test_eaten_fish_has_gone_from_river
    @bear.eat_fish_from_river(@river, "Steve")
    assert_equal(false, @river.fish().include?("Steve"))
  end

end
