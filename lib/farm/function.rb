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
      cattle.collect { |animal| animal * mg_per_kg }
    end

    def self.repro(num_meses, cattle)
      cattle.select { |animal| animal.age > (num_meses * 30) }
    end

    def self.if(condition, then_clause, else_clause)
      if condition
        then_clause.call
      else
        else_clause.call
      end
    end

    def self.welfare(cattle, environment)
      self.if environment == FIELD,
        -> { cattle.collect { |animal| animal.weight / animal.age }.max },
        -> { cattle.collect { |animal| animal.weight / animal.age }.sum / cattle.number * 0.5 }
    end

    def self.net_profit(cattle)
      self.if cattle.destiny == :Sacrifice,
        -> { cattle.animals.collect { |animal| animal.weight }.sum / cattle.number * cattle.sale_price },
        -> { cattle.animals.collect { |animal| animal.age }.sum / cattle.number * cattle.sale_price }
    end
      
  end
end