# frozen_string_literal: true

RSpec.describe Farm do
  it "Farm has a version number" do
    expect(Farm::VERSION).not_to be nil
  end

  describe Farm::Data do
    before :each do
      @data = Farm::Data.new(1, "La Granja de Juan", "Granja de vacas", "La Granja de Juan es una granja de vacas")
    end

    it "Farm has data" do
      expect(@data).not_to be nil
    end

    it "Farm has an id" do
      expect(@data.id).to eq(1)
    end

    it "Farm has a name" do
      expect(@data.name).to eq("La Granja de Juan")
    end

    it "Farm has a type" do
      expect(@data.type).to eq("Granja de vacas")
    end

    it "Farm has a description" do
      expect(@data.description).to eq("La Granja de Juan es una granja de vacas")
    end

    it "The Data of Farm have a to_s method" do
      expect(@data.to_s).to eq("ID: 1\nName: La Granja de Juan\nType: Granja de vacas\nDescription: La Granja de Juan es una granja de vacas")
    end
  end

  describe Farm::Function do
    before :each do
      @functions = Farm::Function.new("healthy", "good quality cares", "the animals reproducted like expected")
    end

    it "Farm has function" do
      expect(Farm::Function).not_to be nil
    end

    it "Farm has a life condition" do
      expect(@functions.life_conditions).to eq("healthy")
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
