# frozen_string_literal: true

RSpec.describe Farm do
  it "Farm has a version number" do
    expect(Farm::VERSION).not_to be nil
  end

  describe Farm::Data do
    before :each do
      @data = Farm::Data.new(1)
    end

    it "Farm has data" do
      expect(@data).not_to be nil
    end

    it "Data has an id" do
      expect(@data.id).to eq(1)
    end
  end
end
