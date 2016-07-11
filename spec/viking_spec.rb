  require 'spec_helper'

  describe Viking do
    let(:stick){double("stick weapon", :is_a? => true)}
    let(:viking){Viking.new("Steve", 40, 12, stick)}
    let(:sword){double("weapon_a", :is_a? => true)}
    let(:axe){double("weapon_b", :is_a? => true)}

    describe "#initialize" do 

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

      it "sets a picked-up weapon as the Vikings weapon" do
        viking.pick_up_weapon(sword)
        expect(viking.weapon).to eq(sword)
      end

      it "Picking up a non-Weapon raises an exception" do
        expect{viking.pick_up_weapon("snake")}.to raise_error
      end


      it "Picking up a new Weapon replaces the Viking's existing weapon" do 
        viking.pick_up_weapon(sword)
        viking.pick_up_weapon(axe)
        expect(viking.weapon).to eq(axe)
      end
    end

    describe "#drop_weapon" do 
      it "dropping a Viking's weapon leaves the Viking weaponless" do 
        viking.drop_weapon
        expect(viking.weapon).to be_nil
      end
    end

    describe "#receive_attack" do
      it "reduces that Viking's health by the specified amount" do
        viking.receive_attack(10)
        expect(viking.health).to eq(30)
      end

      it "calls the take_damage method" do
        allow(viking).to receive(:take_damage)
        expect(viking).to receive(:take_damage)
        viking.receive_attack(10)
      end
    end

    describe "#attack" do
      let(:jerry){Viking.new("Jerry", 50, 10, sword)}
      let(:george){Viking.new("George Costanza", 50, 10, axe)}

      it "attacking another Viking causes the recipient's health to drop" do 
        # allow(george).to receive(:receive_attack)
        jerry.attack(george)
        expect(george.health).to eq(47.5)
      end

      it "attacking another Viking calls that Viking's take_damage method" do
        allow(jerry).to receive(:take_damage)
        expect(jerry).to receive(:take_damage)
        george.attack(jerry)
      end

      it "attacking with no weapon runs damage_with_fists" do 
        allow(jerry).to receive(:damage_with_fists)
        expect(jerry).to receive(:damage_with_fists)
        jerry.attack(george)
      end


    end
  

  # attacking with no weapon deals Fists multiplier times strength damage
  # attacking with a weapon runs damage_with_weapon
  # attacking with a weapon deals damage equal to the Viking's strength times that Weapon's multiplier
  # attacking using a Bow without enough arrows uses Fists instead
  # Killing a Viking raises an error



end

