# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.delete_all
Product.delete_all

Category.create!([
                     {id: 1, name: "Fruits & Vegetables"},
                     {id: 2, name: "Dairy products"},
                     {id: 3, name: "Grain products"},
                     {id: 4, name: "Meat and offal"},
                     {id: 5, name: "Fats"}
                 ])

Product.create!([
                    {id: 1, name: "Vanilia Greek Yoghurt", price: 0.89, upc: "043000000793", category_id: 2},
                    {id: 2, name: "Peanut Butter", price: 8.49, upc: "044000000677" , category_id: 5 },
                    {id: 3, name: "Lettuce", price: 1.00, upc: "052100001500", category_id: 1},
                    {id: 4, name: "Wheat Bread", price: 1.19, upc: "978020137962", category_id: 3},
                    {id: 5, name: "Tomato", price: 1.25, upc: "021078015727" , category_id: 1},
                    {id: 6, name: "Bacon", price: 3.45, upc: "079911034855", category_id: 4},
                    {id: 7, name: "Tuna", price: 2.00, upc: "015794013785", category_id: 4},
                    {id: 8, name: "Roast Beef", price: 2.59, upc: "019800315436", category_id: 4},
                    {id: 9, name: "Salami", price: 1.79, upc: "021078020141", category_id: 4},
                    {id: 10, name: "Cheese, Cheddar", price: 2.79, upc: "072600016125" , category_id: 2},
                    {id: 11, name: "Cheese, Swiss", price: 2.81, upc: "651043022216", category_id: 2},
                    {id: 12, name: "Bananas", price: 1.23, upc: "032700121020", category_id: 1},
                    {id: 13, name: "Strawberries", price: 2.49, upc: "072180635686", category_id: 1},
                    {id: 14, name: "Milk", price: 0.98, upc: "015109001230", category_id: 2},
                    {id: 15, name: "Jasmine Rice", price: 1.19, upc: "815055010009", category_id: 3},
                    {id: 16, name: "Lemon", price: 3.49, upc: "818290014207", category_id: 1},
                    {id: 17, name: "Coconut Oil", price: 9.75, upc: "048001267169", category_id: 5}
                ])