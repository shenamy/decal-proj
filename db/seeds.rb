# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

%w(0 1 2 3 4 5 6 7 8 9 10).each do |name|
  Avatar.create(name: name)
end

count = 1
%w(Backpack Calculator Compass Computer Lamp Eraser Mouse Pen Ruler Textbook).each do |name|
  Item.create(name: name, cost: 100*count)
  count += 1
end
