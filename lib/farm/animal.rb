module Farm
  class Animal
    attr_accessor :name, :age

    def initialize(name = 0, age = 0)
      @name = name
      @age = age
    end
  end
end