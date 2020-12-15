# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dream.destroy_all
Theme.destroy_all
User.destroy_all

Erica = User.create({username: "Erica", email: "erica@erica.com"})
Joe = User.create({username: "Joe", email: "joe@joe.com"})
# hawkeye = Doctor.create({name: "Hawkeye Pierce", department: "Surgery"})
# leonard = Doctor.create({name: "Leonard 'Bones' McCoy", department: "Internal Medicine"})

nightmare = Theme.create({name: "Nightmare", description: "scary type of dream"})
daydream = Theme.create({name: "Daydream", description: "awake dream"})
# bart = Patient.create({name: "Bart Simpson", age: 10})
# marge = Patient.create({name: "Marge Simpson", age: 36})

Dream.create([
  {title: "dreamt i was flying", content: "i dreamt i was flying... lorem ipsum...super crazy", user: Erica, theme: nightmare},
  {title: "daydreaming of vacation", content: "zoned out in class because I was dayreaming...", user: Joe, theme: daydream}
  # {appointment_datetime: DateTime.new(2016, 01, 11, 20, 20, 0), patient: bart, doctor: meredith},
  # {appointment_datetime: DateTime.new(2016, 04, 22, 14, 00, 0), patient: marge, doctor: michaela},
  # {appointment_datetime: DateTime.new(2017, 10, 30, 15, 00, 0), patient: lisa, doctor: phillip},
  # {appointment_datetime: DateTime.new(2016, 07, 11, 16, 00, 0), patient: maggie, doctor: leonard},
  # {appointment_datetime: DateTime.new(2016, 05, 31, 17, 00, 0), patient: homer, doctor: hawkeye},
  # {appointment_datetime: DateTime.new(2017, 06, 03, 10, 00, 0), patient: marge, doctor: meredith}
])


