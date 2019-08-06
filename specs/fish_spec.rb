require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class FishTest < Minitest::Test

  def setup
    @fish = Fish.new("Steve")
  end

  def test_if_fish_has_name
  assert_equal("Steve", @fish.name())
  end

end
