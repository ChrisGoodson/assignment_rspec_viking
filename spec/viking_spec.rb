# require 'spec_helper'

# describe Viking do
  








#   end


  
# end


#    
# A Bow starts with 10 arrows by default
# A Bow created with a specified number of arrows starts with that number of arrows
# useing a Bow reduces arrows by 1
# useing a Bow with 0 arrows throws an error



# Passing a name to a new Viking sets that name attribute
# Passing a health attribute to a new Viking sets that health attribute
# health cannot be overwritten after it's been set on initialize
# A Viking's weapon starts out nil by default
# Picking up a Weapon sets it as the Viking's weapon
# Picking up a non-Weapon raises an exception
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
