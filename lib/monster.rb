class Monster

  HEALTH_POINTS_FACTOR = 3.freeze
  ATTACK_POWER_FACTOR = 1.5.freeze

  attr_reader :name, :level, :difficulty, :strength, :dexterity, :constitution, :intelligence

  def initialize(name, level, difficulty, attributes = {})
    @name = name
    @level = level
    @difficulty = difficulty

    @strength     = attributes[:strength] || 0
    @dexterity    = attributes[:dexterity] || 0
    @constitution = attributes[:constitution] || 0
    @intelligence = attributes[:intelligence] || 0
  end

  def health_points
    constitution * HEALTH_POINTS_FACTOR
  end

  def attack_power
    (strength * ATTACK_POWER_FACTOR).round
  end

end
