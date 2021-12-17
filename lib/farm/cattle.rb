module Farm 
    class Cattle < Data
        include Enumerable

		attr_accessor   :type_cattle,   :destiny,       :number, 
                        :price,         :sale_price,    :animals

        def initialize(
            id = 0,             name = "",          description = "",
            type_cattle = nil,  destiny = nil,
            price = 0.0,        sale_price = 0.0,   animals = [] 
            )
            super(id, name, :Cattle, description)
            @type_cattle = type_cattle
            @destiny = destiny
            @number = animals.size
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
            yield @id
            yield @name
            yield @description
            yield @type_cattle
            yield @destiny
            yield @price
            yield @sale_price
            @animals.each { |animal| yield animal }
            [@id, @name, @description, @type_cattle, @destiny, @price, @sale_price, @animals]
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

        def count
            @animals.count { |animal| yield animal }
        end

        def reject
            @animals.reject { |animal| yield animal }
        end

        def find
            @animals.find { |animal| yield animal }
        end

        def map
            @animals.map { |animal| yield animal }
        end

        def any?
            @animals.any? { |animal| yield animal }
        end
    end
end