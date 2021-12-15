module Farm 
    class Cattle < Data
		attr_accessor :data, :destiny, :number, :type,
                    :price, :sale_animal, :animals

        def initialize(
            data = nil, type = "", destiny = "", number = 0,
            price = 0, sale_animal = 0, animals = [] 
            )
            @data = data
            @destiny = destiny
            @type = type
            @number = number
            @price = price
            @sale_animal = sale_animal
            @animals = animals
        end

        def to_s
            super + "\nDestiny: #{@destiny}\nType: #{@type}\nNumber: #{@number}\nPrice: #{@price}\nSale Animal: #{@sale_animal}\nAnimals: #{@animals}"
        end
    end
end