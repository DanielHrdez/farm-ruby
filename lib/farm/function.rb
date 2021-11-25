module Farm
  class Function
    attr_accessor :life_conditions, :cares, :reproduction
    
    def initialize(life_conditions = "", cares = "", reproduction = "")
      @life_conditions = life_conditions
      @cares = cares
      @reproduction = reproduction
    end
  end
end