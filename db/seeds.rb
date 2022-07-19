
emma= Owner.create(first_name:'Emma', last_name:'Perlman', age:24, email:'emma@gmail.com')
dani= Owner.create(first_name:'Dani', last_name:'Aceves', age:24, email:'dani@gmail.com')
zoe= Owner.create(first_name:'Zoe', last_name:'Simpson', age:24, email:'zoe@gmail.com')
bree= Owner.create(first_name:'Bree', last_name:'McKeon', age:29, email:'bree@gmail.com')
ashley= Owner.create(first_name:'Ashley', last_name:'Livingood', age:30, email:'ashley@gmail.com')
tess= Owner.create(first_name:'Tess', last_name:'Krakoff', age:31, email:'tess@gmail.com')
lexy= Owner.create(first_name:'Lexy', last_name:'Trost', age:32, email:'lexy@gmail.com')
chelsea= Owner.create(first_name:'Chelsea', last_name:'McMillen', age:27, email:'chelsea@gmail.com')
alena= Owner.create(first_name:'Alena', last_name:'Bailey', age:29, email:'alena@gmail.com')

willow= Pet.create(name:'Willow', species:'Dog', age:2, sex:'Female', breed:'Labrador', color: "Brown", weight: 70)

dino= Pet.create(name:'Dino', species:'Dog', age:6, sex:'Male', breed:'Mutt', color: "Black", weight: 75)
luca= Pet.create(name:'Luca', species:'Dog', age:10, sex:'Female', breed:'Weinheimer', color: "Silver", weight: 60)
kimi= Pet.create(name:'Kimi', species:'Dog', age:20, sex:'Female', breed:'Mutt', color: "White", weight: 20)

stella= Pet.create(name:'Stella', species:'Dog', age:1, sex:'Female', breed:'Golden Retriever', color: "Yellow", weight: 50)

ivy= Pet.create(name:'Ivy', species:'Dog', age:6, sex:'Female', breed:'Australian Cattle Dog', color: "White", weight: 60)
roo= Pet.create(name:'Roo', species:'Dog', age:2, sex:'Female', breed:'Doberman', color: "Black", weight: 65)
fern= Pet.create(name:'Fern', species:'Cat', age:5, sex:'Female', breed:'Domestic Shothair', color: "Flame Point", weight: 16)
cricket= Pet.create(name:'Cricket', species:'Cat', age:2, sex:'Female', breed:'Domestic Shothair', color: "Grey", weight: 8)
cedar= Pet.create(name:'Cedar', species:'Cat', age:1, sex:'Male', breed:'Domestic Shothair', color: "Orange", weight: 10)

bean= Pet.create(name:'Bean', species:'Cat', age:1, sex:'Male', breed:'Tabby', color: "Brown", weight: 15)
otis=Pet.create(name:'Otis', species:'Cat', age:2, sex:'Male', breed:'Tuxedo', color: "Black", weight: 12)

milo=Pet.create(name:'Milo', species:'Dog', age:1, sex:'Male', breed:'Golden Retriever', color: "Yellow", weight: 75)

elliot= Pet.create(name:'Elliot', species:'Dog', age:2, sex:'Male', breed:'Australian Shepard', color: "Black", weight: 40)
maisy= Pet.create(name:'Maisy', species:'Dog', age:4, sex:'Female', breed:'Australian Shepard', color: "White", weight: 20)


PetOwnership.create(owner: emma, pet:willow)
PetOwnership.create(owner: dani, pet:dino)
PetOwnership.create(owner: dani, pet:luca)
PetOwnership.create(owner: dani, pet:kimi)
PetOwnership.create(owner: zoe, pet:stella)
PetOwnership.create(owner: bree, pet:ivy)
PetOwnership.create(owner: bree, pet:fern)
PetOwnership.create(owner: bree, pet:cricket)
PetOwnership.create(owner: bree, pet:cedar)
PetOwnership.create(owner: ashley, pet:cricket)
PetOwnership.create(owner: ashley, pet:cedar)
PetOwnership.create(owner: ashley, pet:roo)
PetOwnership.create(owner: tess, pet:bean)
PetOwnership.create(owner: tess, pet:otis)
PetOwnership.create(owner: lexy, pet:milo)
PetOwnership.create(owner: chelsea, pet:elliot)
PetOwnership.create(owner: chelsea, pet:maisy)
PetOwnership.create(owner: alena, pet:maisy)
PetOwnership.create(owner: alena, pet:elliot)

PetStatus.create(pet:willow, cups_of_food_daily: 3, daily_exercise_minutes: 60, hours_of_sleep: 7, most_recent_vet_visit:'17-02-2022')








puts 'Done seeding!'