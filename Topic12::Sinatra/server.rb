require 'sinatra'

#defining local variables 
name = "Elvis Peter"
email = "elvispeter91@gmail.com"
todo = [
    'Water the plants',
    'Feed the cat',
    'Call the girlfriend',
    'Cook the dinner',
    'Blah blah blah' 
  ];

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
    redirect to('/helloPeople')
end

get '/todo' do
   @todoList = todo
    erb :todo
end

get '/createTask' do
    erb :create_task
end

post '/createNewTodo' do
    # p "hello am in a post request finally!!"
    # p "==== #{params["todo"]}"
    new_item = params["todo"]
    todo.push(new_item)
    redirect to('/todo')
end