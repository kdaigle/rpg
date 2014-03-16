require "floor"

describe Floor do

  context "#number" do
    it "has a numeric floor number" do
      floor = Floor.new(1)
      expect(floor.number).to eql(1)
    end
  end

end
