module Farm
  class Animal
    include Comparable

    attr_accessor :id, :age, :genre, :weight

    def initialize(id = 0, age = 0, genre = nil, weight = 0.0)
      @id = id
      @age = age
      @genre = genre
      @weight = weight

      if defined?(@@count)
        @@count += 1
      else
        @@count = 1
      end
    end

    def to_s
      "Name: #{@id}\nAge: #{@age}\nGenre: #{@genre}\nWeight: #{@weight}"
    end

    def self.count
      @@count
    end

    def <=>(other)
      self.weight <=> other.weight
    end

    def ==(other)
      self.id == other.id
      self.age == other.age
      self.genre == other.genre
      self.weight == other.weight
    end
  end
end