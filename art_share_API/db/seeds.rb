# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ActiveRecord::Base.transaction do

    puts 'Creating seed data...'
    vincent = User.create(
        username: "vinnieforlyfe"
    )

    jolene = User.create(
        username: "jxonpollockfan"
    )

    lauren = User.create(
        username: "ljackson25"
    )

    michael = User.create(
        username: "renaissancelvr"
    )

    flowers = Artwork.create(
        title: "Flowers",
        image_url: "flowers.url",
        artist_id: 1
    )

    flowers2 = Artwork.create(
        title: "Flowers",
        image_url: "123.com",
        artist_id: 2
    )




end
