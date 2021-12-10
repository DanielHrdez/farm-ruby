module Farm
  class Livestock < Animal
    include Comparable

    attr_accessor :breed, :exploit, :feed

    def initialize(name = "", breed = "", exploit = "", feed = "")
      super(name)
      @breed = breed
      @exploit = exploit
      @feed = feed
    end

    def to_s
      "Livestock: #{@name} (#{@breed}), #{@exploit}, #{@feed}"
    end

    def <=>(other)
      self.age <=> other.age
    end

    def ==(other)
      self.breed == other.breed
      self.exploit == other.exploit
      self.feed == other.feed
    end
  end
end