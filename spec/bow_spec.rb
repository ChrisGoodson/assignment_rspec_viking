require 'spec_helper'
require 'weapons/bow'

describe "Bow" do
  let(:bow){Bow.new}


  describe "#initialize" do
    it "checks if a bow arrow count is readable" do
      expect(bow.arrows).to eq(10)

    end

  end
end
