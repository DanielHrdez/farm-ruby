module Farm 
    class Cattle < Data
		attr_accessor :data, :destiny, :number, :type,
                    :price, :sale_price, :animals

        def initialize(
            data = nil, type = nil, destiny = nil, number = 0,
            price = 0.0, sale_price = 0.0, animals = [] 
            )
            @data = data
            @type = type
            @destiny = destiny
            @number = number
            @price = price
            @sale_price = sale_price
            @animals = animals
        end

        def to_s
            @data.to_s + "\nType: #{@type}\nDestiny: #{@destiny}\nNumber: #{@number}\n" + 
            "Price: #{@price}\nSale Price: #{@sale_price}\nAnimals:\n" + 
            @animals.map { |animal| animal.to_s }.join("\n") + "\n"
        end
    end
end