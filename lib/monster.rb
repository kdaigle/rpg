class Monster

  attr_reader :name, :level, :difficulty

  def initialize(name, level, difficulty)
    @name = name
    @level = level
    @difficulty = difficulty
  end

end
