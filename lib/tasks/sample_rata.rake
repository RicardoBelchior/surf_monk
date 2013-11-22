namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Example User",
                 email: "ricardolagido@gmail.com",
                 surfer_or_spongy: "surfer",
                 password: "password",
                 password_confirmation: "password",
                 role: "admin")
    99.times do |n|
      name  = Faker::Name.name
      email = "waterman-#{n+1}@railstutorial.org"
      password  = "password"
      surfer_or_spongy = if Random.rand(2) == 0; "surfer" else "bodyboarder" end
      role = if Random.rand(10) < 7; "normal" else "vip" end
      User.create!(name: name,
                   email: email,
                   surfer_or_spongy: surfer_or_spongy,
                   password: password,
                   password_confirmation: password,
                   role: role)
    end
  end
end
