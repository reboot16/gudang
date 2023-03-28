# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# seed product
products = Product.create([
    {
        product_name:   'ASUS Zenbook',
        product_code:   'AS-ZNBK',
        description:    'This is laptop with tochscreen',
        price:          18000000
    },
    {
        product_name:   'Keychron K7 Slim',
        product_code:   'Keychron K7 slim',
        description:    'This is bluetoth keuboard',
        price:          1200000
    }
])