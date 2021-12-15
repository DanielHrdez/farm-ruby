module Farm 
    class Cattle < Data
		attr_accessor :data, :destiny, :number, :type,
                    :price, :sale_price, :animals

        def initialize(
            data = nil, type = nil, destiny = nil, number = 0,
            price = 0.0, sale_price = 0.0, animals = [] 
            )
            @data = data
            @destiny = destiny
            @type = type
            @number = number
            @price = price
            @sale_price = sale_price
            @animals = animals
        end

        def to_s
            super + "\nDestiny: #{@destiny}\nType: #{@type}\nNumber: #{@number}\nPrice: #{@price}\nSale price: #{@sale_price}\nAnimals: #{@animals}"
        end
    end
end