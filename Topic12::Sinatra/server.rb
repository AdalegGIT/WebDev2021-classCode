require 'sinatra'

name = "Elvis Peter"
email = "elvispeter91@gmail.com"

get '/' do
    "<h1>hello world</h1>"
end

get '/helloPeople' do
    
    erb :hello_people
end

get '/contactMe' do
    @name = name
    @el = email
    erb :contact_me
end

get '/msg' do
    "<h1>People r gud :-)</h1>"
end`