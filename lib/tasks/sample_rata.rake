namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    # Fill USERS
    u1 = User.create!(name: "R. Belchy",
                 email: "ricardolagido@gmail.com",
                 surfer_or_spongy: "surfer",
                 password: "password",
                 password_confirmation: "password",
                 role: "admin")
    99.times do |n|
      name  = Faker::Name.name
      email = "waterman-#{n+1}@surfermail.org"
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

    # Fill SPOTS
    s1 = Spot.create!(name: "Praia Azul",
                 description: "Praia azul é das grandes praias deste país com uma qualidade ímpar a nível do tubo",
                 gps: "41.3472333, -8.7539000",
                 website: "http://www.wannasurf.com/spot/Europe/Portugal/North_Porto/praia_azul/index.html")

    s2 = Spot.create!(name: "Praia do Rock",
                 description: "Rock power! Onda da caxina, crowd tranquilo.",
                 gps: "41.3560667, -8.7554833",
                 website: "http://www.wannasurf.com/spot/Europe/Portugal/North_Porto/rock/index.html")

    s3 = Spot.create!(name: "Rock da Pedra",
                 description: "Reef break ao lado da praia do rock. ",
                 gps: "41.3536833, -8.7547333",
                 website: "")

    s4 = Spot.create!(name: "Azurara",
                 description: "Praia mais limpa de Portugal.",
                 gps: "41.3386333, -8.7449833",
                 website: "http://www.wannasurf.com/spot/Europe/Portugal/North_Porto/azurara/index.html")

    s5 = Spot.create!(name: "Póvoa de Varzim",
                 description: "Esquerda consistente de fundo de pedra.",
                 gps: "41.3839167, -8.7722000",
                 website: "http://www.wannasurf.com/spot/Europe/Portugal/North_Porto/povoa_de_varzim/index.html")

    #Spot.create!(name: "",
    #             description: ""
    #             gps: "",
    #             website: "")

    
    # Fill Reports
    u1.reports.create!(
                   spot_id: s1.id,
                   timestamp: "25/Nov/2013 15:29:30 +0100".to_datetime,
                   score: 8,
                   wind: 6,
                   sandbank: 5)
    u1.reports.create!(
                   spot_id: s2.id,
                   timestamp: "25/Nov/2013 09:29:30 +0100".to_datetime,
                   score: 5,
                   wind: 4,
                   sandbank: 4)
    u1.reports.create!(
                   spot_id: s5.id,
                   timestamp: "23/Nov/2013 12:20:30 +0100".to_datetime,
                   score: 9,
                   wind: 8,
                   sandbank: 6)
    u1.reports.create!(
                   spot_id: s3.id,
                   timestamp: "21/Nov/2013 16:20:30 +0100".to_datetime,
                   score: 4,
                   wind: 5,
                   sandbank: 4)

  end
end
