# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Team.delete_all
User.delete_all

sales_team = Team.create!(name: 'Sales')
product_team = Team.create!(name: 'Product')
r_and_d_team = Team.create!(name: 'R&D')

User.create!(full_name: 'Nicolas Moeret', team_id: sales_team.id)
User.create!(full_name: 'Selfie Trial', team_id: sales_team.id)
sales_team_manager = User.create!(full_name: 'Robert Scharf')
sales_team.update_attributes(manager_id: sales_team_manager.id)

User.create!(full_name: 'Brian Setiba', team_id: product_team.id)
product_team_manager = User.create!(full_name: 'Salma Derichou')
product_team.update_attributes(manager_id: product_team_manager.id)

User.create!(full_name: 'Gregory Shell', team_id: r_and_d_team.id)
User.create!(full_name: 'Patrick McKenzie', team_id: r_and_d_team.id)
User.create!(full_name: 'Mathieu Denim', team_id: r_and_d_team.id)
r_and_d_team.update_attributes(manager_id: product_team_manager.id)
