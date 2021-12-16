module Farm
  module Function
    FIELD = :field
    CAGES = :cages

    MG_PER_KG = 10

    def self.manage(environment, hour)
      if environment == CAGES
        return :auto
      elsif environment == FIELD
        if hour > 6 && hour < 18
          return :free
        else
          return :sheds
        end
      end
    end

    def self.antibiotics(cattle)
      cattle.collect { |animal| animal.weight * MG_PER_KG }
    end

    def self.repro(cattle)
      cattle.select { |animal| animal.age > (2 * 12 * 30) }
    end
  end
end