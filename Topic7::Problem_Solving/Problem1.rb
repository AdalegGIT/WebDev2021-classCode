# Problem: Get the total sum of a list of numbers
# 1 2 5 11 1

#go through the list of numbers
# each time add the number to a total
#return the total


#argument :: number array
#return :: integer or float
#define a method that takes in an array as the argument
def add_the_list(numbers)
#define a variable total and assign it as 0
    total = 0
# loop through the array
    numbers.each do |num|
# add the item to a total
        total = total + num
#end the loop
    end
#return the total
    return total
#end the method
end

puts add_the_list([1,4,5,6,7])
