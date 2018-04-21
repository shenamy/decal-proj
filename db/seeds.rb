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
  a.gif = name+".gif"
  a.save!
end

%w(Backpack Calculator Chair Compass Computer Lamp Eraser Flask Mouse Pen Pencil Ruler Textbook).each do |name|
  i = Item.new
  i.name = name
  i.cost = 5
  i.save!
end
