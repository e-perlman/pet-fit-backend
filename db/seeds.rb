
emma= Owner.create(first_name:'Emma',last_name:'Perlman',age:24)
willow= Pet.create(name:'Willow',age:2, breed:'Labrador', color: "Brown", weight: 70)

PetOwnership.create(owner: emma, pet:willow)

puts 'Done seeding!'