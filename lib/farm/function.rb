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

    def self.repro
      "All species mate correctly"
    end
  end
end