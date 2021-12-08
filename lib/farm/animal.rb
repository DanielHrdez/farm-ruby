module Farm
  class Animal
    attr_accessor :id, :age, :genre, :weight

    def initialize(id = 0, age = 0, genre = nil, weight = 0)
      @id = id
      @age = age
      @genre = genre
      @weight = weight
    end

    def to_s
      "ID: #{@id}\nAge: #{@age}\nGenre: #{@genre}\nWeight: #{@weight}"
    end
  end
end