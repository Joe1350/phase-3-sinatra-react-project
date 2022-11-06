puts "🌱 Seeding spices..."

# Seed your database here
Day.create(date: "11/05/2022")
Day.create(date: "11/06/2022")


Food.create(
    name: "SEC McGriddle",
    calories: 550,
    fat: 33,
    fiber: 2,
    day_id: 1
)

Food.create(
    name: "Sausage Biscuit with Egg",
    calories: 530,
    fat: 35,
    fiber: 2,
    day_id: 2
)

puts "✅ Done seeding!"
