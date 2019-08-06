class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def eat_fish_from_river(river, fish_to_eat)
    for fish in river.fish()
      if fish.name() == fish_to_eat
      @stomach << fish.name()
      river.fish.delete(fish)
      end
    end
  end

end
