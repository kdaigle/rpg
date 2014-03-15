class Player

  attr_reader :x_position, :y_position

  def initialize(x_position=0, y_position=0)
    @x_position = x_position
    @y_position = y_position
  end

  # Public
  def position
    [@x_position, @y_position]
  end

  def steps_to_move_to(x_destination, y_destination)
    (x_destination - x_position).abs + (y_destination - y_position).abs
  end

end
