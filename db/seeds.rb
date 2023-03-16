# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# create Category and Task
c = Category.create!(
  name: "Work",
  description: "work stuff activities"
)
=begin
t = Task.create!(
  name: "meh",
  description: "...",
  category_id: c.id
)
=end

Category.create!(
  name: "Social",
  description: "for mingling with other humans"
)

Category.create!(
  name: "Movies and TV",
  description: "very long watch list"
)

Category.create!(
  name: "Sports",
  description: "well.. more of an e-sports category"
)

Category.create!(
  name: "Home",
  description: "chores chores chores"
)

Category.create!(
  name: "Food",
  description: "must try list"
)

Category.create!(
  name: "Finance",
  description: "investments, if there are any"
)

Category.create!(
  name: "Shop",
  description: "buy list, there are many"
)

Category.create!(
  name: "Travel",
  description: "soon..."
)