module Farm 
    class Cattle < Data
		attr_accessor :data, :destiny, :n_animals, :type,
                    :price_animal, :sale_animal, :animals

        def initialize(
            data = nil, type = "", destiny = "", n_animals = 0,
            price_animal = 0, sale_animal = 0, animals = [] 
            )
            @data = data
            @destiny = destiny
            @type = type
            @n_animals = n_animals
            @price_animal = price_animal
            @sale_animal = sale_animal
            @animals = animals
        end

        def to_s
            super + "\nDestination: #{@dest_animal}\nType: #{@type}\nNumber of animals: #{@n_animals}\nPrice per animal: #{@price_animal}\nSale per animal: #{@sale_animal}\nAnimals: #{@animals}"
        end
    end
end