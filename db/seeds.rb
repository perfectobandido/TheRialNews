# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: 'ignacio pepe', email: "ignacio.p7500@gmail.com", password: "123456", role: "user")

# Actualizar el rol de un usuario existente a "admin"
user = User.find_by(id: 1) # Suponiendo que el usuario que deseas actualizar tiene el ID 1
user.update(role: "admin", name: "Andres Gonzalez")
