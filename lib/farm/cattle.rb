module Farm 
    class Cattle < Data
		attr_accessor :data, :dest_animal, :n_animals,
                    :price_animal, :sale_animal, :animals

        def initialize(
            data = nil, dest_animal = "", 
            n_animals = 0, price_animal = 0, sale_animal = 0, animals = [] 
            )
            @data = data
            @dest_animal = dest_animal
            @n_animals = n_animals
            @price_animal = price_animal
            @sale_animal = sale_animal
            @animals = animals
        end

        def to_s
            super + "\nDestination: #{@dest_animal}\nNumber of animals: #{@n_animals}\nPrice per animal: #{@price_animal}\nSale per animal: #{@sale_animal}\nAnimals: #{@animals}"
        end
    end
end