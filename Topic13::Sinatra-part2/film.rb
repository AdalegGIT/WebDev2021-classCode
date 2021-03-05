gem 'activerecord', '=4.2.10' #specify this if you are not using the latest version ( the whole line)
require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'films.sqlite3') #establish the connection

class Film < ActiveRecord::Base
       field :title, as: :string #@title --> method call
       field :country, as: :string #@country
       field :genre, as: :string #@genre
       field :rating, as: :integer #@rating
end

Film.auto_upgrade!

# p Film.all

# Film.create(title: "Star Wars",country: "USA", genre: 'scifi', rating: 5)
# Film.create(title: "Into the Wild",country: "USA",  genre: 'life',rating: 5)
# # p a
# #CRUD
# #CREATE
# my_obj = Film.new(title: "Batman", country:"USA")
# #this object is not yet saved to the DB

# my_obj.rating=4

# #this object is still not saved in the db

# my_obj.save
# #it gets saved to the DB


# #option2
# my_obj1 = Film.create(title: "new film")

# #READ
# Film.all #--> returns all the objects as saved in the DB in an array
# Film.find(3) #--> gives the film with ID 
# Film.find_by(title: "Matrix") #--> returns the first film that matches the condition
# Film.where(title: "Star Wars") #--> returns an array of films with the matching title
# Film.first
# Film.last 

# #UPDATE
# #find the film to update
# film_to_update = Film.find(4)

# #option1
# film_to_update.genre = "Sci-fi"
# film_to_update.save

# #option2
# film_to_update.update(country: "USA" , rating: 4)


# #DELETE
# film_to_delete = Film.find_by(title: "Super Man")
# film_to_delete.destroy #--> Instance method to delete

# Film.destroy_by(title: "Star Wars") #-->*special case class method destroys all the objects with matching condition

# Film.destroy_all #--> removes all the records from the DB





