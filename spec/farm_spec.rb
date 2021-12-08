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
        expect(@animal.id).to eq(1)
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
        @animal = Farm::Animal.new(1, 10234, "Hembra", 200000)
      end

      it "An instance of the Animal class is expected to be an Animal" do
        expect(@animal).to be_a(Farm::Animal)
      end

      it "An instance of the Animal class is expected to be an Object" do
        expect(@animal).to be_a(Object)
      end
    end
  end

  describe Farm::Data do
    context '# Data & ID of the Farm' do
    before :each do
      @data = Farm::Data.new(1)
    end
    
      it "Farm has data" do
        expect(@data).not_to be nil
      end

      it "Farm has an id" do
        expect(@data.id).to eq(1)
      end
    end

    context '# Name & Type of the Farm' do
      before :each do
        @data = Farm::Data.new(1, "La Granja de Juan", "Granja de vacas")
      end

      it "Farm has a name" do
        expect(@data.name).to eq("La Granja de Juan")
      end

      it "Farm has a type" do
        expect(@data.type).to eq("Granja de vacas")
      end
    end 

    context '# Description & to_s method of the Farm' do
      before :each do
        @data = Farm::Data.new(1, "La Granja de Juan", "Granja de vacas", "La Granja de Juan es una granja de vacas")
      end

      it "Farm has a description" do
        expect(@data.description).to eq("La Granja de Juan es una granja de vacas")
      end

      it "The Data of Farm have a to_s method" do
        expect(@data.to_s).to eq("ID: 1\nName: La Granja de Juan\nType: Granja de vacas\nDescription: La Granja de Juan es una granja de vacas")
      end
    end
  end

  describe Farm::Function do
    context '# Function & Life Condition of the Farm' do
      before :each do
        @functions = Farm::Function.new("healthy")
      end

      it "Farm has function" do
        expect(Farm::Function).not_to be nil
      end

      it "Farm has a life condition" do
        expect(@functions.life_conditions).to eq("healthy")
      end
    end

    context '# Cares, Reproduction and to_s method of the Farm' do
      before :each do
        @functions = Farm::Function.new("healthy", "good quality cares", "the animals reproducted like expected")
      end

      it "Farm has a care" do
        expect(@functions.cares).to eq("good quality cares")
      end

      it "Farm has a reproduction" do
        expect(@functions.reproduction).to eq("the animals reproducted like expected")
      end

      it "The Functions of Farm has a to_s method" do
        expect(@functions.to_s).to eq("Life Conditions: healthy\nCares: good quality cares\nReproduction: the animals reproducted like expected")
      end
    end 
  end
end
