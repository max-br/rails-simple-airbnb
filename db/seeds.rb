# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying flats..."
Flat.destroy_all

flats_data = [
  {
    name: 'Light & Spacious Garden Flat London',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 75,
    number_of_guests: 3
  },
  {
    name: 'Stylish House Close to River Thames',
    address: '5 Queensmill Road London SW6 6JP',
    description: 'Lovely warm comfortable and stylishly furnished house. Private bedroom and bathroom with shared living areas.',
    price_per_night: 65,
    number_of_guests: 2
  },
  {
    name: 'St Pancras Clock Tower Guest Suite',
    address: 'Euston Rd London N1C 4QP',
    description: 'A mini apartment within the clock tower apartment at St Pancras Station, with its own en suite bathroom and kitchen and sitting area.',
    price_per_night: 110,
    number_of_guests: 2
  },
  {
    name: 'Spacious Flat Center London',
    address: '29 Warren Road London W3 3OT',
    description: 'Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 70,
    number_of_guests: 3
  }
]

puts "Creating flats..."
flat = []
flats_data.each_with_index do |data, index|
  flat[index] = Flat.create!(data)
  p "#{flat[index].name} is created"
  # flat[index].user_id = user.id
  # flat[index].save!
end

puts "Hey I have created #{Flat.count}!"








