# frozen_string_literal: true

RSpec.describe Farm do
  it "has a version number" do
    expect(Farm::VERSION).not_to be nil
  end

  describe Farm::Data do
    it "has data" do
      expect(Farm::Data.new).not_to be nil
    end
  end
end
