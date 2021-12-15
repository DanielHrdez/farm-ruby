module Farm
  class Animal
    include Comparable

    attr_accessor :id, :age, :gender, :weight

    def initialize(id = 0, age = 0, gender = nil, weight = 0.0)
      @id = id
      @age = age
      @gender = gender
      @weight = weight

      if defined?(@@count)
        @@count += 1
      else
        @@count = 1
      end
    end

    def to_s
      "ID: #{@id}\nAge: #{@age}\nGender: #{@gender}\nWeight: #{@weight}"
    end

    def self.count
      @@count
    end

    def <=>(other)
      self.weight <=> other.weight
    end

    def ==(other)
      self.id == other.id && 
      self.age == other.age &&
      self.gender == other.gender &&
      self.weight == other.weight
    end
  end
end