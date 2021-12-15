module Farm
  class Livestock < Animal
    include Comparable

    attr_accessor :breed, :exploit, :feed

    def initialize(id = 0, age = 0, genre = nil, weight = 0.0, breed = nil, exploit = nil, feed = nil)
      super(id, age, genre, weight)
      @breed = breed
      @exploit = exploit
      @feed = feed
    end

    def to_s
      super + "\nBreed: #{@breed}\nExploit: #{@exploit}\nFeed: #{@feed}"
    end

    def <=>(other)
      self.age <=> other.age
    end

    def ==(other)
      super == other &&
      self.breed == other.breed &&
      self.exploit == other.exploit &&
      self.feed == other.feed
    end
  end
end