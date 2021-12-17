module Farm
  module Function
    FIELD = :field
    CAGES = :cages

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

    def self.antibiotics(mg_per_kg, cattle)
      cattle.collect { |animal| animal.weight * mg_per_kg }
    end

    def self.repro(num_meses, cattle)
      cattle.select { |animal| animal.age > (num_meses * 30) }
    end
  end
end