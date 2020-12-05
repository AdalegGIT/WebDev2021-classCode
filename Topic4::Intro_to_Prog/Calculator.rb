puts "Enter the first number"

get_first_num = gets.chomp.to_i

puts "Enter the second number"

get_sec_num = gets.chomp.to_i

puts " Enter the operation (1 - Add/ 2 -Subtract/ 3- Division / 4- Multiply)"

get_user_option = gets.chomp

answer = nil

if get_user_option == "1"
    answer = get_first_num + get_sec_num
  
elsif get_user_option == "2"
    answer = get_first_num - get_sec_num
    # puts " Your ans is #{answer}"
elsif get_user_option == "3"
    answer = get_first_num / get_sec_num.to_f
    # puts " Your ans is #{answer}"
elsif get_user_option == "4"
    answer = get_first_num * get_sec_num
    # puts " Your ans is #{answer}"    
end


if answer == nil

    puts "Invalid Operation"
else

    puts "Your ans is #{answer}"
end

# if blahjadk
# end

# if dfdlf
# else
# end

# if fdmfl
# elsif
# else
# end

# if dfk
# elsif
# end

