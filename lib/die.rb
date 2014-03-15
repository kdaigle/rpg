class Die

  attr_reader :sides

  def initialize(number_of_sides)
    self.sides = number_of_sides
  end

  # Public: Roll the die and return a number.
  #
  # Returns an Integer.
  def roll
    Random.rand(1..sides)
  end

  private

  # Internal: Set the number of sides of the die.
  #
  # number_of_sides - Integer for the number of sides of the die
  #
  # Returns sides or raises TypeError.
  def sides=(number_of_sides)
    if !number_of_sides.is_a?(Integer)
      raise TypeError.new("Must provide Integer; you provided a #{number_of_sides.class}")
    end
    if number_of_sides <= 0
      raise TypeError.new("The number of sides must be greater than 0")
    end
    @sides = number_of_sides
  end

end
