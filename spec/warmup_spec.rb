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

  describe "#calls_some_methods" do
    # let(:my_string) {double("string", :upcase! => "UNBELIEVABLE")}
    it "returns a new string after receiving a bang" do
      my_string = "unbelievable"
      expect(warmup.calls_some_methods(my_string)).to receive(:upcase!).and_return("UNBELIEVABLE")
      # calls_some_methods(my_string)

    end
    it "invokes the destructive reverse method" do
      expect(warmup).to receive(:reverse!).and_return("toag")
      calls_some_methods("goat")
    end
  end


end

