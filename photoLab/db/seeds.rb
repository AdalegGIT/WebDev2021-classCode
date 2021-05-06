# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
photo1 = Photo.create(title: "Ruby", url: "https://cdn.iconscout.com/icon/free/png-256/ruby-47-1175102.png", desc: "language")
photo2 = Photo.create(title: "JS", url: "https://symbols.getvecta.com/stencil_25/40_javascript.4ce34e7594.jpg", desc: "language")

Comment.create(name: "User1", message:"Great", photo_id: photo1.id )

photo2.comments << Comment.create(name: "User2", message:"Great")
photo2.tags
