# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# KINDS
['video','articulo','paper','red social','foto'].each do |k|
    Kind.create(name: k)
end

# CATEGORIES
cat_animals = Category.create(name: "Animals", private: false)
cat_movies = Category.create(name: "Movies", private: false)

cat_animals_mamiferos = Category.create(name: "Mamiferos", private: false, category_id: cat_animals.id)
cat_animals_fishes = Category.create(name: "Fishes", private: false, category_id: cat_animals.id)

cat_movies_thriller = Category.create(name: "Thriller", private: false, category_id: cat_movies.id)
cat_movies_comedy = Category.create(name: "Comedy", private: false, category_id: cat_movies.id)