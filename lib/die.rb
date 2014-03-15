class Die

  class NoSides < StandardError; end

  attr_reader :sides

  # Public: Set the number of sides of this die.
  #
  # number_of_sides - Integer of number of sides for die.
  #
  # Returns an Integer or raises TypeError.
  def sides=(number_of_sides)
    @sides = Integer(number_of_sides)
  end

  # Public: Roll the die and return a number.
  #
  # Returns an Integer.
  def roll
    raise NoSides if sides.nil?
    Random.rand(1..sides)
  end

end
