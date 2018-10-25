require 'faker'

10.times do
 city = City.create!(city_name: Faker::RickAndMorty.location)
end

10.times do
  doctor = Doctor.create!(name: Faker::Hobbit.character, city_id: rand(1..10))
end

10.times do
  patient = Patient.create!(name: Faker::Hobbit.character, city_id: rand(1..10))
end

15.times do
  appointment = Appointment.create!(date: Faker::Date.forward(23) ,doctor_id: rand(1..10), patient_id: rand(1..10), city_id: rand(1..10))
end

10.times do
 specialty = Specialty.create!(name: Faker::ProgrammingLanguage.name)
end

30.times do
    Doctor.find(rand(1..10)).specialties << Specialty.find(rand(1..10))
end
