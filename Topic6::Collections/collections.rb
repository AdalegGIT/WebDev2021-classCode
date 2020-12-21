# 10.times do
#     puts "Hi :)"
# end

# 10.times do |x|
#     puts "You are in #{x}"
# end

#.each
# flavours = ['Chocolate', 'Strawberry', 'Vanilla', 'Rocky Road', 'Green Tea']

# flavours.each do |flavour|

#     puts "Your choice is ::::  #{flavour}"
#     if flavour == 'Chocolate'
#         puts "Its Dark Choclate"
#     elsif flavour =='Green Tea'
#         puts "Not my favo !!"
    
#     else
#         puts "You have to buy #{flavour}"
   
#     end
# end

# puts " When will I be executed ? !!"

numbers = (1..10).to_a

#  print numbers

# numbers.each do |number|
#     puts"you get $ #{number * 100}"
# end

# numbers.each { |number| puts "you get $ #{number * 100}" }

# puts numbers

# ["hi","hello" , "bye"].each do |exp|
#     puts "your expression is #{exp}"
# end

#.map

# new_numbers = numbers.map do |number|
#     number * 1000
# end


# puts new_numbers

puts "\n =============="

#  print numbers

#  puts "\n =============="

#  print new_numbers


# new_strings = ["hi","hello" , "bye" ,"good", "happy", "cool"].map do |my_string|
#       my_string.capitalize
# end

# puts new_strings
# puts numbers

# puts "*****************"
# numbers.map! do |number|
#     number * 1000
# end


# print numbers

# bears = {
#   'Cheer'      => 'fires an uzi at',
#   'Funshine'   => 'jabs forward with a sword impaling',
#   'Love-a-lot' => 'throws a grenade at',
#   'Grumpy'     => 'shoots a poison tipped arrow at'
# }

#.each

# bears.each do |bear , action|
#     puts "#{bear}'s action is #{action}"
# end

bears = {
  'Cheer'      => { action: 'fires an uzi at', damage: 90 },
  'Funshine'   => { action: 'jabs forward with a sword impaling', damage: 10 },
  'Love-a-lot' => { action: 'throws a grenade at', damage: 80 },
  'Grumpy'     => { action: 'shoots a poison tipped arrow at', damage: 20 }
}
# { action: 'fires an uzi at', damage: 90 }
# {:action => ''}

# bears[:Funshine][:damage]
# bears.each do |k , value| #k = 'Cheer', value = { action: 'fires an uzi at', damage: 90 }
#   puts value[:damage]
#   # puts "#{key} has a damage#{"
# end


useful_bears = bears.select do | bear, attribute|
      attribute[:damage] > 50
end

puts useful_bears

puts "================"

puts bears

bears.select! do | bear, attribute|
  attribute[:damage] > 50
end
puts " -------------"
puts bears

