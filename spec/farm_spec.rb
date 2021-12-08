# frozen_string_literal: true

RSpec.describe Farm do
  it "Farm has a version number" do
    expect(Farm::VERSION).not_to be nil
  end

  describe "Representation of a Animal - Farm::Animal" do
    context "Atributes of the class Animal" do
      before :each do
        @animal = Farm::Animal.new(1, 10234, "Hembra", 200000)
      end

      it "Has a class to represent animals" do
        expect(@animal).not_to be nil
      end

      it "Has a attribute to identify the animal" do
        expect(@animal.name).to eq(1)
      end

      it "Has a attribute with the age of the animal in days" do
        expect(@animal.age).to eq(10234)
      end

      it "Has a attribute with the sex of the animal" do
        expect(@animal.genre).to eq("Hembra")
      end

      it "Has a attribute with the weight of the animal in grams" do
        expect(@animal.weight).to eq(200000)
      end

      it "A string is obtained with the information of the animal correctly formatted" do
        expect(@animal.to_s).not_to eq("")
      end
    end

    context "Inheritance of the class Animal" do
      before :each do
        @animal = Farm::Animal.new("Vaca", 10234, "Hembra", 200000)
      end

      it "An instance of the Animal class is expected to be an Animal" do
        expect(@animal).to be_a(Farm::Animal)
      end

      it "An instance of the Animal class is expected to be an Object" do
        expect(@animal).to be_a(Object)
      end

      it "An instance of the Animal class is expected to be an BasicObject" do
        expect(@animal).to be_a(BasicObject)
      end

      it "An instance of the Animal class is not expected to be a String" do
        expect(@animal).not_to be_a(String)
      end

      it "An instance of the Animal class is not expected to be a Number" do
        expect(@animal).not_to be_a(Numeric)
      end
    end
  end

  describe "Representation of a Head of Livestock - Farm::Livestock" do
    context "Atributes of the class Livestock" do
      before :each do
        @livestock = Farm::Livestock.new("Pork", "Porcine", "Meat", "Omnivore")
      end

      it "Has a class to represent livestock" do
        expect(@livestock).not_to be nil
      end

      it "Has a attribute for the breed (bovine, porcine, ovine, goat)" do
        expect(@livestock.breed).to eq("Porcine")
      end

      it "Has a attribute for the type of exploitation (meat, skin, milk)" do
        expect(@livestock.exploit).to eq("Meat")
      end

      it "Has a attribute for the type of feeding (herbivorous, omnivore)" do
        expect(@livestock.feed).not_to eq("Herbivorous")
      end

      it "A string is obtained with the information of the livestock correctly formatted" do
        expect(@livestock.to_s).not_to eq("")
      end
    end

    context "Inheritance of the class Livestock" do
      before :each do
        @livestock = Farm::Livestock.new("Pork", "Porcine", "Meat", "Omnivore")
      end

      it "An instance of the Livestock class is expected to be an Livestock" do
        expect(@livestock).to be_a(Farm::Livestock)
      end

      it "An instance of the Livestock class is expected to be an Animal" do
        expect(@livestock).to be_a(Farm::Animal)
      end

      it "An instance of the Livestock class is expected to be an Object" do
        expect(@livestock).to be_a(Object)
      end

      it "An instance of the Livestock class is expected to be an BasicObject" do
        expect(@livestock).to be_a(BasicObject)
      end

      it "An instance of the Livestock class is not expected to be a String" do
        expect(@livestock).not_to be_a(String)
      end

      it "An instance of the Livestock class is not expected to be a Number" do
        expect(@livestock).not_to be_a(Numeric)
      end
    end
  end

  describe "Representation of the Data of a Farm - Farm::Data" do
    context "Atributes of the class Data" do
      before :each do
        @data = Farm::Data.new(1, "La Granja de Juan", "Ganadera", "La Granja de Juan es Ganadera")
      end

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
      before :each do
        @data = Farm::Data.new(1, "La Granja de Juan", "Ganadera", "La Granja de Juan es Ganadera")
      end

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
      before :each do
        @function = Farm::Function
      end

      it "Exist a module to store the functionalities" do
        expect(@function).not_to be nil
      end

      it "Exist a constant to represent the life conditions (open field, barn)" do
        expect(@function::LIFE_CONDITIONS).not_to be nil
      end
    end

    context "Inheritance of the module Function" do
      before :each do
        @function = Farm::Function
      end

      it "Is expected to be a Module" do
        expect(@function).to be_a(Module)
      end

      it "Is expected to be an Object" do
        expect(@function).to be_a(Object)
      end

      it "Is expected to be an BasicObject" do
        expect(@function).to be_a(BasicObject)
      end
    end
  end
end
