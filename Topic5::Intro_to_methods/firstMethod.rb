
#method defining
# def hello
#     puts "Hello"
# end


# def hi(user_name) 
#     #user_name='Sree'
#     puts "Hello #{user_name}"
# end


# puts "Hello"



# #calling / invoking the method
# hi('Sree')

# hi('Elvis')

# hi('Ron')

# hi('Velvel')
# puts "Hello Sree"
# puts "Hello Elvis"
# puts "Hello Basha"

def give_me_the_total(first, second)
    #first = number_of_cats
    #second = number_of_dogs
    sum = first + second
    300 * first
    puts "Thanks for using this method"
    return sum
    #34

end


# number_of_cats = 35
# number_of_dogs = 25

# total_number_of_pets = give_me_the_total(number_of_cats, number_of_dogs)
# # total_number_of_pets = 60
# puts total_number_of_pets

# number_of_movies = 120
# number_of_series = 230


# total_number_of_media = give_me_the_total(number_of_movies, number_of_series)
#total_number_of_media=350


# puts "It is a great day"

# hi

# puts "Have fun"

# hi

# def ask_name
#     puts "What is your name? "

#     my_name = gets.chomp
# end


# ask_name

# if my_name == nil
#    ask_name
# else 
#     puts "hello"
# end


# def say_hello(name, city)
#     #puts("Hello, #{name} from #{city}!")
#     give_me_the_total(30,45)
# end
  
# a = say_hello("Emma", "Toronto")

# puts a
# say_hello("Jackie", "Toronto")
# say_hello("Brian", "Toronto")

  def make_burger(bun, patty, cheese, toppings)
    burger = ""
    burger += bun + "\n"
    burger += toppings
    if cheese
      burger += "/////\n"
    end
    burger += patty + "\n"
    burger += bun
    puts "Making burger..."
    return burger
  end


  def get_toppings(pickle, onion)
    toppings = ""
    if pickle
      toppings += "~~~\n"
    end
    if onion
      toppings += "^^^^^\n"
    end
    return toppings
  end


def to_bool(my_ans)
    if my_ans == 'true'
        return true
    elsif my_ans == 'false'
        return false
    end
end

  puts "Do you want onion toppings ?"
  my_answer1 = gets.chomp #in string format
  onion = to_bool(my_answer1) #set a boolean value
  
  puts "Do you want pickle toppings ?"
    my_ans2 = gets.chomp
  pickle = to_bool(my_ans2)
  
  puts " Do you want cheese in the burger ?"
    my_ans3 = gets.chomp
  cheese = to_bool(my_ans3)




  my_toppings = get_toppings(pickle, onion)
  puts make_burger(' --- ', '=====', cheese, my_toppings)

#   my_toppings = get_toppings(true, true)
#   puts make_burger(' --- ', '=====', true, my_toppings)

