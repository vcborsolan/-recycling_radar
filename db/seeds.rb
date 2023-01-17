# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# categories seeds
categories = [
    { name: "Eletrônicos" },
    { name: "Papel" },
    { name: "Plástico" },
    { name: "Vidro" },
    { name: "Metal" }
  ]
  Category.create!(categories)

# user seed:
User.create!(name: "John Doe", email: "johndoe@example.com", password: "password")

# items seeds
items = [
    { name: "Televisão", description: "TV de LCD de 32 polegadas", weight: 10, quantity: 1, frequency: "monthly", category_id: 1, user_id: 1, latitude: -23.5489, longitude: -46.6388 },
    { name: "Impressora", description: "Impressora multifuncional HP", weight: 15, quantity: 2, frequency: "quarterly", category_id: 1, user_id: 1, latitude: -23.5489, longitude: -46.6388 },
    { name: "Papelão", description: "Caixas de papelão", weight: 50, quantity: 10, frequency: "weekly", category_id: 2, user_id: 1, latitude: -23.5489, longitude: -46.6388 }]

Item.create!(items)