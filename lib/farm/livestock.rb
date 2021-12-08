module Farm
  class Livestock < Animal
    attr_accessor :breed

    def initialize(name, breed)
      super(name)
      @breed = breed
    end
  end
end