require "die"

describe Die do

  context "#initialize" do
    it "doesn't accept 'nil' as a value" do
      expect { Die.new(nil) }.to raise_error(TypeError)
    end

    it "sets the dice to any whole number" do
      die = Die.new(6)
      expect(die.sides).to be_eql(6)
    end

    it "doesn't accept a string number" do
      expect { Die.new("6") }.to raise_error(TypeError)
    end

    it "doesn't accept a 0 or lower Integer" do
      expect { Die.new(0) }.to raise_error(TypeError)
    end

    it "doesn't accept a Decimal or Float" do
      expect { Die.new(6.5) }.to raise_error(TypeError)
    end
  end

  context "#roll" do
    it "returns an Integer" do
      die = Die.new(6)
      expect(die.roll).to be_an(Integer)
    end
  end

end
