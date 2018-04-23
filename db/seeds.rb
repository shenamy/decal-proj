# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


%w(bread cheetos harrypotter lazy pikachu rainbow sombrero default).each do |name|
  a = Avatar.new
  a.name = name
  a.save!
end

count = 1
%w(Backpack Calculator Compass Computer Lamp Eraser Mouse Pen Ruler Textbook).each do |name|
  i = Item.new
  i.name = name
  i.cost = 100 * count
  count += 1
  i.save!
end
