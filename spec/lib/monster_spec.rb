require "monster"

describe Monster do

  subject { Monster.new("Skeleton King", 5, 50) }

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
  end
end
