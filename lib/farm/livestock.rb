module Farm
  class Livestock < Animal
    attr_accessor :breed, :exploit, :feed

    def initialize(name = "", breed = "", exploit = "", feed = "")
      super(name)
      @breed = breed
      @exploit = exploit
      @feed = feed
    end
  end
end