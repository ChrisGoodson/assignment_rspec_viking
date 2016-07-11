  require 'spec_helper'

  describe Viking do


  describe "#initialize" do 
    let(:viking){Viking.new("Steve", 40)}
    it "passing a name to a new Viking sets that name attribute" do 
      expect(viking.name).to eq("Steve")
    end

    it "passing a health attribute to a new Viking sets that health attribute" do 
      expect(viking.health).to eq(40)
    end

    it "health cannot be overwritten after it's been set on initialize" do 
      expect{viking.health=(20)}.to raise_error(NoMethodError)
    end

    it "A Viking's weapon starts out nil by default" do 
      expect(Viking.new.weapon).to be_nil
    end
  end

  describe "#pick_up_weapon" do 
    let(:sword) do
      double("Weapon", :is_a? => true)
    end
    let(:viking){Viking.new("Hans")}
    it "sets a picked-up weapon as the Vikings weapon" do
      viking.pick_up_weapon(sword)
      expect(viking.weapon).to eq(sword)
    end

    it "Picking up a non-Weapon raises an exception" do
      expect{viking.pick_up_weapon("snake")}.to raise_error
    end



  end
  # 
  # Picking up a new Weapon replaces the Viking's existing weapon
  # Dropping a Viking's weapon leaves the Viking weaponless
  # The receive_attack method reduces that Viking's health by the specified amount
  # The receive_attack method calls the take_damage method (hint: recall expect(...).to receive(...))
  # attacking another Viking causes the recipient's health to drop
  # attacking another Viking calls that Viking's take_damage method
  # attacking with no weapon runs damage_with_fists
  # attacking with no weapon deals Fists multiplier times strength damage
  # attacking with a weapon runs damage_with_weapon
  # attacking with a weapon deals damage equal to the Viking's strength times that Weapon's multiplier
  # attacking using a Bow without enough arrows uses Fists instead
  # Killing a Viking raises an error
  end

