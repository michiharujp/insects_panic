User.create!(name: "tekeke",
             password: "tekeke",
             password_confirmation: "tekeke",
             sex: :male
)

10.times do |index|
  name = Faker::Name.unique.name
  password = "password"
  sex = index % 3
  User.create!(name: name,
               password: password,
               password_confirmation: password,
               sex: sex)
end

9.times do |index|
  name = Faker::Name.unique.name
  picture = "./app/assets/images/#{index+1}.png"
  Insect.create!(name: name,
                 picture: File.open(picture))
end
