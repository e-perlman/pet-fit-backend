Owner.create(first_name:'Emma',last_name:'Perlman',age:24)
Pet.create(name:'Willow',age:2, breed:'Labrador', color: "Brown", weight: 70)
PetOwnership.create(owner_id: 1, pet_id:1)

puts 'Done seeding!'