require 'sinatra'
require_relative 'film'

get '/films' do 
    @films = Film.all
    erb :films
end

get "/addFilm" do
    erb :addFilm
end

get '/editFilm' do 
    id = params["filmID"] 
    @film = Film.find(id)
    erb :editFilm
end


post '/updateFilm' do
    film_to_update = Film.find_by(title: params["title"]) 
    film_to_update.title = params["title"]
    film_to_update.country = params["country"]
    film_to_update.genre = params["genre"]
    film_to_update.rating = params["rating"]
    film_to_update.save

    redirect to("/films")
end

post '/createFilm' do
    Film.create(title: params["title"], country: params["country"],  genre: params["genre"],rating: params["rating"])
    redirect to("/films")
end