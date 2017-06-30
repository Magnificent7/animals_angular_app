Animal.destroy_all
Animal.create([
  {name: 'Giraffe', leg_count: 4, description: "Really tall fella", meat_eater: false},
  {name: 'Lion', leg_count: 4, description: "King of the jungle", meat_eater: true},
  {name: 'Hedgehog', leg_count: 4, description: "Spiky but adorable", meat_eater: false},
  {name: 'Ostrich', leg_count: 2, description: "Fast and scary", meat_eater: true}])