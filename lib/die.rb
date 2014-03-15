class Die

  attr_reader :sides

  def sides=(number_of_sides)
    @sides = Integer(number_of_sides)
  end

end
