# frozen_string_literal: true

RSpec.describe Farm do
  it "Farm has a version number" do
    expect(Farm::VERSION).not_to be nil
  end

  describe "Representation of a Animal - Farm::Animal" do
    before :all do
      @vaca = Farm::Animal.new(1, 10234, :Hembra, 20000.0)
    end

    context "Atributes of the class Animal" do
      it "Has a class to represent animals" do
        expect(@vaca).not_to be nil
      end

      it "Has a attribute to identify the animal" do
        expect(@vaca.id).to eq(1)
      end

      it "Has a attribute with the age of the animal in days" do
        expect(@vaca.age).to eq(10234)
      end

      it "Has a attribute with the sex of the animal" do
        expect(@vaca.genre).to eq(:Hembra)
      end

      it "Has a attribute with the weight of the animal in grams" do
        expect(@vaca.weight).to eq(20000.0)
      end

      it "A string is obtained with the information of the animal correctly formatted" do
        expect(@vaca.to_s).not_to eq("")
      end

      it "A number is obtained with the information of the number of animals in the farm" do
        expect(Farm::Animal.count).not_to eq(0)
      end

      before :all do
        @toro = Farm::Animal.new(2, 5235, :Macho, 10219.0)
      end

      it "The animals of the farm can be compared by weight with <=>" do
        expect(@vaca <=> @toro).to eq(1)
      end

      it "The animals of the farm can be compared by weight with <" do
        expect(@vaca < @toro).to eq(false)
      end

      it "The animals of the farm can be compared by weight with >" do
        expect(@vaca > @toro).to eq(true)
      end

      it "The animals of the farm can be compared by weight with ==" do
        expect(@vaca == @toro).to eq(false)
      end

      it "The animals of the farm can be compared by weight with between" do
        @pajaro = Farm::Animal.new(3, 12312, :Macho, 123.3)
        expect(@vaca.between?(@toro, @pajaro)).to eq(false)
      end
    end

    context "Inheritance of the class Animal" do
      it "An instance of the Animal class is expected to be an Animal" do
        expect(@vaca).to be_a(Farm::Animal)
      end

      it "An instance of the Animal class is expected to be an Object" do
        expect(@vaca).to be_a(Object)
      end

      it "An instance of the Animal class is expected to be an BasicObject" do
        expect(@vaca).to be_a(BasicObject)
      end

      it "An instance of the Animal class is not expected to be a String" do
        expect(@vaca).not_to be_a(String)
      end

      it "An instance of the Animal class is not expected to be a Number" do
        expect(@vaca).not_to be_a(Numeric)
      end
    end
  end

  describe "Representation of a Head of Livestock - Farm::Livestock" do
    before :all do
      @pork = Farm::Livestock.new(4, 1245, :Hembra, 456.76, :Porcine, :Meat, :Omnivore)
    end

    context "Atributes of the class Livestock" do
      it "Has a class to represent livestock" do
        expect(@pork).not_to be nil
      end

      it "Has a attribute for the breed (bovine, porcine, ovine, goat)" do
        expect(@pork.breed).to eq(:Porcine)
      end

      it "Has a attribute for the type of exploitation (meat, skin, milk)" do
        expect(@pork.exploit).to eq(:Meat)
      end

      it "Has a attribute for the type of feeding (herbivorous, omnivore)" do
        expect(@pork.feed).not_to eq(:Herbivorous)
      end

      it "A string is obtained with the information of the livestock correctly formatted" do
        expect(@pork.to_s).not_to eq("")
      end

      it "A number is obtained with the information of the number of livestock in the farm" do
        expect(Farm::Livestock.count).not_to eq(0)
      end

      before :all do
        @dog = Farm::Livestock.new(5, 134678, :Hembra, 9876.54, :Bovine, :Meat, :Omnivore)
      end

      it "The livestock of the farm can be compared by weight with <=>" do
        expect(@pork <=> @dog).to eq(-1)
      end

      it "The livestock of the farm can be compared by weight with <" do
        expect(@pork < @dog).to eq(true)
      end

      it "The livestock of the farm can be compared by weight with >" do
        expect(@pork > @dog).to eq(false)
      end

      it "The livestock of the farm can be compared by weight with ==" do
        expect(@pork == @dog).to eq(true)
      end

      it "The livestock of the farm can be compared by weight with between" do
        @cat = Farm::Livestock.new(6, 65467, :Macho, 543435.67, :Bovine, :Meat, :Omnivore)
        expect(@pork.between?(@dog, @cat)).to eq(false)
      end
    end

    context "Inheritance of the class Livestock" do
      it "An instance of the Livestock class is expected to be an Livestock" do
        expect(@pork).to be_a(Farm::Livestock)
      end

      it "An instance of the Livestock class is expected to be an Animal" do
        expect(@pork).to be_a(Farm::Animal)
      end

      it "An instance of the Livestock class is expected to be an Object" do
        expect(@pork).to be_a(Object)
      end

      it "An instance of the Livestock class is expected to be an BasicObject" do
        expect(@pork).to be_a(BasicObject)
      end

      it "An instance of the Livestock class is not expected to be a String" do
        expect(@pork).not_to be_a(String)
      end

      it "An instance of the Livestock class is not expected to be a Number" do
        expect(@pork).not_to be_a(Numeric)
      end
    end
  end

  describe "Representation of the Data of a Farm - Farm::Data" do
    before :all do
      @data = Farm::Data.new(1, "La Granja de Juan", "Ganadera", "La Granja de Juan es Ganadera")
    end

    context "Atributes of the class Data" do
      it "Has an attribute to identify the farm" do
        expect(@data.id).to eq(1)
      end

      it "Has an attribute for the name of the farm" do
        expect(@data.name).to eq("La Granja de Juan")
      end

      it "Has an attribute for the type of the farm (poultry, livestock)" do
        expect(@data.type).to eq("Ganadera")
      end

      it "Has an attribute for the description of the farm" do
        expect(@data.description).to eq("La Granja de Juan es Ganadera")
      end

      it "A string is obtained with the information of the farm correctly formatted" do
        expect(@data.to_s).to eq("ID: 1\nName: La Granja de Juan\nType: Ganadera\nDescription: La Granja de Juan es Ganadera")
      end
    end

    context "Inheritance of the class Data" do
      it "An instance of the Data class is expected to be an Data" do
        expect(@data).to be_a(Farm::Data)
      end

      it "An instance of the Data class is expected to be an Object" do
        expect(@data).to be_a(Object)
      end

      it "An instance of the Data class is expected to be an BasicObject" do
        expect(@data).to be_a(BasicObject)
      end

      it "An instance of the Data class is not expected to be a String" do
        expect(@data).not_to be_a(String)
      end

      it "An instance of the Data class is not expected to be a Number" do
        expect(@data).not_to be_a(Numeric)
      end
    end
  end

  describe "Interface of the functionalities - Farm::Function" do
    context 'Components of the module Function' do
      it "Exist a module to store the functionalities" do
        expect(Farm::Function).not_to be nil
      end

      it "Exist a constant to represent the life conditions (open field, barn)" do
        expect(Farm::Function::LIFE_CONDITIONS).not_to be nil
      end

      it "Exist a process to set the cares of the animals" do
        expect(Farm::Function.cares).not_to be nil
      end

      it "Exist a process to set the reproduction of the animals" do
        expect(Farm::Function.repro).not_to be nil
      end
    end

    context "Inheritance of the module Function" do
      it "Is expected to be a Module" do
        expect(Farm::Function).to be_a(Module)
      end

      it "Is expected to be an Object" do
        expect(Farm::Function).to be_a(Object)
      end

      it "Is expected to be an BasicObject" do
        expect(Farm::Function).to be_a(BasicObject)
      end

      it "Is not expected to be a String" do
        expect(Farm::Function).not_to be_a(String)
      end

      it "Is not expected to be a Number" do
        expect(Farm::Function).not_to be_a(Numeric)
      end
    end
  end

  describe "Representation of the Farm - Farm::Cattle" do
    before :all do
      @data = Farm::Data.new(1, "La Granja de Juan", "Ganadera", "La Granja de Juan es Ganadera")
      @pajaro = Farm::Animal.new(3, 12312, :Macho, 123.3)
      @cattle = Farm::Cattle.new(
                              @data, :Bovine, :Milk, 
                              0, 0.0, 0.0, [@pajaro]
                              )
    end

    context "Inheritance of the class Cattle" do
      it "An instance of the Cattle class is expected to be an Cattle" do
        expect(@cattle).to be_a(Farm::Cattle)
      end

      it "An instance of the Cattle class is expected to be Data" do
        expect(@cattle).to be_a(Farm::Data)
      end

      it "An instance of the Cattle class is expected to be an Object" do
        expect(@cattle).to be_a(Object)
      end

      it "An instance of the Cattle class is expected to be an BasicObject" do
        expect(@cattle).to be_a(BasicObject)
      end

      it "An instance of the Cattle class is not expected to be an Animal" do
        expect(@cattle).not_to be_a(Farm::Animal)
      end

      it "An instance of the Cattle class is not expected to be a livestock" do
        expect(@cattle).not_to be_a(Farm::Livestock)
      end
    end

    context "Atributes of the class Cattle" do
      it "Has a class to store the data of the farm" do 
        expect(@cattle.data).not_to be nil
      end

      it "Has an attribute for the type of livestock(Bovine, Ovine, Caprine or Porcine)" do
        expect(@cattle.type).to eq(:Bovine)
      end

      it "Has an attribute for the destiny of the animals(Milk, Sacrifice)" do
        expect(@cattle.destiny).to eq(:Milk)
      end

      it "Has an attribute for the number of animals" do
        expect(@cattle.number).to eq(0)
      end

      it "Has an attribute for the unitary price of the animals" do
        expect(@cattle.price).to eq(0)
      end

      it "Has an attribute for the unitary sale price of the animals" do
        expect(@cattle.sale_price).to eq(0)
      end

      it "Has an attribute to store the animals" do
        expect(@cattle.animals).not_to be nil
      end
    end
  end
end
