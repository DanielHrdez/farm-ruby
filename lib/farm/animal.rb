module Farm
  class Animal
    attr_accessor :name, :age, :sex, :weight

    def initialize(name = 0, age = 0, sex = nil, weight = 0)
      @name = name
      @age = age
      @sex = sex
      @weight = weight
    end
  end
end