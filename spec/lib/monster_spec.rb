require "monster"

describe Monster do

  subject { Monster.new("Skeleton King", 5, 50, {strength: 5, dexterity: 10, constitution: 15, intelligence: 3}) }

  context "#initialize" do
    it "sets the name" do
      expect(subject.name).to eql("Skeleton King")
    end

    it "sets the level" do
      expect(subject.level).to eql(5)
    end

    it "sets the difficulty" do
      expect(subject.difficulty).to eql(50)
    end

    it "sets the attributes" do
      expect(subject.strength).to eql(5)
      expect(subject.dexterity).to eql(10)
      expect(subject.constitution).to eql(15)
      expect(subject.intelligence).to eql(3)
    end
  end

  context "#health_points" do
    it "calculates health points based on constitution" do
      expect(subject.health_points).to eql(45)
    end
  end
end
