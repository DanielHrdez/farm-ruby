module Farm
  class Function
    attr_accessor :life_conditions, :cares, :reproduction
    
    def initialize(life_conditions = "", cares = "", reproduction = "")
      @life_conditions = life_conditions
      @cares = cares
      @reproduction = reproduction
    end

    def to_s
      "Life Conditions: #{@life_conditions}\nCares: #{@cares}\nReproduction: #{@reproduction}"
    end
  end
end