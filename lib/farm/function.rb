module Farm
  class Function
    attr_accessor :life_conditions, :cares

    def initialize(life_conditions = "", cares = "")
      @life_conditions = life_conditions
      @cares = cares
    end
  end
end