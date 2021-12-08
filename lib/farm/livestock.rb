module Farm
  class Livestock < Animal
    attr_accessor :breed, :exploit

    def initialize(name = "", breed = "", exploit = "")
      super(name)
      @breed = breed
      @exploit = exploit
    end
  end
end