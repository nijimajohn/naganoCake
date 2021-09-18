# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.create!(
    name: "ケーキ"
)
Product.create!(
    genre_id: 1,
    name: "ショートケーキ",
    introduction: "ショートケーキだよ",
    price: 298,
    is_active: true
)
Product.create!(
    genre_id: 1,
    name: "チョコケーキ",
    introduction: "チョコレートケーキだよ",
    price: 398,
    is_active: true
)
Product.create!(
    genre_id: 1,
    name: "チーズケーキ",
    introduction: "チーズケーキだよ",
    price: 498,
    is_active: true
)
Product.create!(
    genre_id: 1,
    name: "ホールケーキ",
    introduction: "ホールケーキだよ",
    price: 598,
    is_active: true
)