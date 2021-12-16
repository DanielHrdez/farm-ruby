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
      @age <=> other.age
    end

    def ==(other)
      super == other &&
      @breed == other.breed &&
      @exploit == other.exploit &&
      @feed == other.feed
    end

    def + (value) 
      Livestock.new(
        @id,
        @age + value,
        @genre,
        @weight + value,
        @breed,
        @exploit,
        @feed
      )
    end

    def * (value)
      Livestock.new(
        @id * value,
        @age * value,
        @genre,
        @weight * value,
        @breed,
        @exploit,
        @feed
      )
    end

    def / (value)
      Livestock.new(
        @id / value,
        @age / value,
        @genre,
        @weight / value,
        @breed,
        @exploit,
        @feed
      )
    end

    def - (value)
      Livestock.new(
        @id - value,
        @age - value,
        @genre,
        @weight - value,
        @breed,
        @exploit,
        @feed
      )
    end
  end
end