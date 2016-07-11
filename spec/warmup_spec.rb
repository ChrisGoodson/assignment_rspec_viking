require 'warmup'

describe Warmup do
  let(:warmup){Warmup.new}

  describe "#gets_shout" do 
    it "returns user input in all-caps" do 
      allow(warmup).to receive(:gets).and_return("cool")

      expect(warmup.gets_shout).to eq("COOL")
    end
  end

  describe "#triple_size" do 
      let(:my_array) do 
        double("Array", :size => 4)
      end
    it "returns triple the size of the array passed in" do 
      expect(warmup.triple_size(my_array)).to eq(12)
    end
  end
end

