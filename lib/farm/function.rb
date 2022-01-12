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

    # def self.welfare(cattle, environment)
    #   max = 0
    #   mean = 0

    #   cattle.animals.each do |animal|
    #     ratio = animal.weight / animal.age
    #     if ratio > max
    #       max = ratio
    #     end
    #     mean += ratio
    #   end

    #   mean /= cattle.animals.size

    #   if environment == FIELD
    #     max
    #   else
    #     mean * 0.5
    #   end
    # end

    def self.my_if(condition, then_clause, else_clause)
      if condition
        then_clause.call
      else
        else_clause.call
      end
    end
    
    def self.welfare(cattle, environment)
      self.my_if environment == FIELD,
        -> { cattle.collect { |animal| animal.weight / animal.age }.max },
        -> { cattle.collect { |animal| animal.weight / animal.age }.mean * 0.5 }
    end

    # def self.net_profit(cattle)
    #   if cattle.destiny == :Sacrifice
    #     mean = 0
    #     cattle.animals.each do |animal|
    #       mean += animal.weight 
    #     end
    #     mean *= cattle.sale_price / cattle.animals.size
    #   else
    #     mean = 0
    #     cattle.animals.each do |animal|
    #       mean += animal.age
    #     end
    #     mean *= cattle.sale_price / cattle.animals.size 
    #   end
    # end
  end
end