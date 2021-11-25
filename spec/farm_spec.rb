# frozen_string_literal: true

RSpec.describe Farm do
  it "Farm has a version number" do
    expect(Farm::VERSION).not_to be nil
  end

  describe Farm::Data do
    before :each do
      @data = Farm::Data.new(1, "La Granja de Juan", "Granja de vacas")
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
  end
end
