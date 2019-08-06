require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class BearTest < Minitest::Test

  def setup
    @bear = Bear.new("Baloo", "Black")
  end

  def test_bear_has_name
    assert_equal("Baloo", @bear.name())
  end

  def test_bear_has_type
    assert_equal("Black", @bear.type())
  end

end
