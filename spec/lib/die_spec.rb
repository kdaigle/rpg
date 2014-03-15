require "die"

describe Die do

  context "#sides" do
    it "is nil when not set" do
      expect(subject.sides).to be_nil
    end

    it "sets the dice to any whole number" do
      subject.sides = 6
      expect(subject.sides).to be_eql(6)
    end

    it "converts a string number to an integer number" do
      subject.sides = "6"
      expect(subject.sides).to be_eql(6)
    end

    it "doesn't accept 'nil' as a value" do
      expect { subject.sides = nil }.to raise_error(TypeError)
    end
  end

end
