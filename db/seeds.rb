# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do
  AngerLog.create(title: 'test', thought: 'test', feeling: 'test', anger_stage: 5, action: 'test', result: 'test', angered_at: Time.now)
end
