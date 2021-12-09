module Farm
  module Function
    LIFE_CONDITIONS = ["Open Field", "Barn"]

    def self.cares
      "Feeding, Watering and Weeding"
    end

    def self.repro
      "All species mate correctly"
    end
  end
end