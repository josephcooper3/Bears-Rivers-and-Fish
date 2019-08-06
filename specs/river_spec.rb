require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class RiverTest < Minitest::Test

  def setup
    @river = River.new("Water of Leith", 53000)
  end

  def test_river_has_name
    assert_equal("Water of Leith", @river.name())
  end

end
