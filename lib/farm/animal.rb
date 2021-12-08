module Farm
  class Animal
    attr_accessor :name, :age, :genre, :weight

    def initialize(name = 0, age = 0, genre = nil, weight = 0)
      @name = name
      @age = age
      @genre = genre
      @weight = weight
    end

    def to_s
      "Name: #{@name}\nAge: #{@age}\nGenre: #{@genre}\nWeight: #{@weight}"
    end
  end
end