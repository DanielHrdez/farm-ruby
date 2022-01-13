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
      ratios = cattle.collect { |animal| animal.weight / animal.age }
      self.if environment == FIELD,
        -> { 100 },
        -> { ratios.sum / cattle.number * 100 / ratios.max * 0.5 }
    end

    def self.net_profit(cattle)
      weights = cattle.animals.collect { |animal| animal.weight }
      ages = cattle.animals.collect { |animal| animal.age }

      self.if cattle.destiny == :Sacrifice,
        -> { weights.sum / cattle.number * cattle.sale_price * 100 / weights.max },
        -> { ages.sum / cattle.number * cattle.sale_price * 100 / ages.max }
    end

    def self.matched(x) {
      on: -> (pred, fn) { self.matched(x) },
      otherwise: -> (fn) { x }
    } end 

    def self.match(x) {
      on: -> (pred, fn) { self.if pred.call(x), -> { self.matched(fn.call) }, -> { self.match(x) } },
      otherwise: -> (fn) { fn.call }
    } end 

    def self.productivity(cattle, environment)
      welfare = self.match(self.welfare(cattle, environment)) \
        [:on].call(-> (x) { x <= 20 },            -> { 1 }) \
        [:on].call(-> (x) { x.between?(21, 79) }, -> { 2 }) \
        [:otherwise].call(                        -> { 3 })
      
      profit = self.match(self.net_profit(cattle)) \
        [:on].call(-> (x) { x < 10 },             -> { 1 }) \
        [:on].call(-> (x) { x.between?(10, 50) }, -> { 2 }) \
        [:otherwise].call(                        -> { 3 })

      ((welfare + profit) / 2).round
    end
  end
end