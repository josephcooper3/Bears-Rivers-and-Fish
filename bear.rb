class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def eat_fish_from_river(river, fish)
    @river = river
    @fish = fish
    @stomach << fish
    @river.fish_count -= 1
  end

end
