module Farm
  class Animal
    attr_accessor :name, :age, :sex

    def initialize(name = 0, age = 0, sex = nil)
      @name = name
      @age = age
      @sex = sex
    end
  end
end