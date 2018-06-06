10.times do
  User.create  do |u|
    u.first_name = Faker::Name.first_name
    u.last_name = Faker::Name.last_name
    u.email = Faker::Internet.email
    u.date_of_birth =  rand(400).day.ago
    u.phone_number = Faker::PhoneNumber.phone_number
  end
end
