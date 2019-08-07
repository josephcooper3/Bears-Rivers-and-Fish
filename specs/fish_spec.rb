require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')
require_relative('../fish')


class FishTest < Minitest::Test

  def setup
    @fish = Fish.new("Steve")
  end

  def test_if_fish_has_name
  assert_equal("Steve", @fish.name())
  end

end
