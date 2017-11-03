50.times do
  name = Faker::Name.unique.name
  password = "password"
  User.create!(name: name,
               password: password,
               password_confirmation: password)
end
