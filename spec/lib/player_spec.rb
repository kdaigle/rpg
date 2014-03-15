require "player"

describe Player do

  context "#initialize" do
    it "allows for setting of default position" do
      player = Player.new(-5, -1)
      expect(player.position).to eql([-5, -1])
    end
  end

  context "#position" do
    it "knows the default X,Y coordinates of the player" do
      expect(subject.position).to eql([0,0])
    end
  end

  context "#steps_to_move_to" do
    it "returns the number of steps between current position and new position" do
      expect(subject.steps_to_move_to(1, 2)).to eql(3)
    end

    it "handles two negative starting positions correctly" do
      player = Player.new(-5, -1)
      expect(player.steps_to_move_to(0,0)).to eql(6)
    end

    it "handles negative X starting position" do
      player = Player.new(-5, 1)
      expect(player.steps_to_move_to(0,0)).to eql(6)
    end

    it "handles negative Y starting position" do
      player = Player.new(5, -1)
      expect(player.steps_to_move_to(0,0)).to eql(6)
    end

    it "handles large movement from one quadrant to another" do
      player = Player.new(-5, -5)
      expect(player.steps_to_move_to(5,5)).to eql(20)
    end
  end

end
