require 'spec_helper'

describe Bow do
  let(:bow){Bow.new}


  describe "#initialize" do
    it "checks if a bow arrow count is readable" do
      expect(bow).to respond_to(:arrows)
    end

    it "starts with 10 arrows by default" do 
      expect(bow.arrows).to eq(10)
    end

    it "a Bow created with a specified number of arrows starts with that number of arrows" do
      expect(Bow.new(15).arrows).to eq(15)
    end
  end

  describe "#use" do
    let(:bow){Bow.new(15)}
    it "using a Bow reduces arrows by 1" do 
      bow.use
      expect(bow.arrows).to eq(14)
    end

    it "using a Bow with 0 arrows throws an error" do
      bow = Bow.new(0)
      expect{bow.use}.to raise_error
    end

  end
end
