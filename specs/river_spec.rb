require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')


class RiverTest < Minitest::Test

  def setup
    @fish1 = Fish.new("Finn")
    @fish2 = Fish.new("Captain Haddock")
    @fish3 = Fish.new("Magikarp")
    @fish4 = Fish.new("Mack the Mackerel")
    @fish5 = Fish.new("Steve")
    @river = River.new("Water of Leith", [@fish1, @fish2, @fish3, @fish4, @fish5])
  end

  def test_river_has_name
    assert_equal("Water of Leith", @river.name())
  end

  def test_fish_count
    assert_equal(5, @river.fish().count)
  end

end
