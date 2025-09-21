Book.delete_all

if Rails.env.development?
    titles = [
        "Dev: The life of a turtle",
        "Dev: The life of a cat",
        "Dev: The life of a dog",
        "Dev: The life of a bird",
         "Dev: The life of a mouse"
    ]
elsif Rails.env.production?
    titles = [
        "Prod: The weight of a hundred kilograms",
        "Prod: The weight of a five kilograms",
        "Prod: The weight of a two kilograms",
        "Prod: The weight of a three kilograms",
        "Prod: The weight of a four kilograms"
    ]
elsif Rails.env.test?
    titles = [
        "TEST: RSpec Seed 1",
        "TEST: RSpec Seed 2"
    ]
else
    []
end

Book.create!(titles.map { |t| { title: t } })
puts "Seeded #{Book.count} books for #{Rails.env}."
