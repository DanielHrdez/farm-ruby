module Farm 
    class Cattle < Data
        include Enumerable

		attr_accessor   :type_cattle,   :destiny,       :number, 
                        :price,         :sale_price,    :animals

        def initialize(
            id = 0,             name = "",          description = "",
            type_cattle = nil,  destiny = nil,      number = 0,
            price = 0.0,        sale_price = 0.0,   animals = [] 
            )
            super(id, name, :Cattle, description)
            @type_cattle = type_cattle
            @destiny = destiny
            @number = number
            @price = price
            @sale_price = sale_price
            @animals = animals
        end

        def to_s
            super + "\nType Cattle: #{@type_cattle}\nDestiny: #{@destiny}\nNumber: #{@number}\n" + 
            "Price: #{@price}\nSale Price: #{@sale_price}\nAnimals:\n" + 
            @animals.map { |animal| animal.to_s }.join("\n") + "\n"
        end

        def each
            @animals.each { |animal| yield animal }
        end

        def max 
            @animals.max
        end

        def min 
            @animals.min
        end

        def sort
            @animals.sort
        end

        def collect
            @animals.collect { |animal| yield animal }
        end

        def select
            @animals.select { |animal| yield animal }
        end
    end
end