# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users =>
isaac = User.create(first_name: 'Isaac', last_name: 'Medina', username: 'isaac.meedinaa')
alex = User.create(first_name: 'Alex', last_name: 'Medina', username: 'al_medina')
misael = User.create(first_name: 'Misael', last_name: 'Medina', username: 'misael_m123')

20.times do
    Note.create(title: Faker::Book.title, content: Faker::Quote.famous_last_words, user: User.all.sample)
end