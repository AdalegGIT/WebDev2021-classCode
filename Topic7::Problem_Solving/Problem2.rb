# Problem: Pig Latin
# Pig Latin
 # "apple" => "appleay"

 # "plum" => "umplay"

 # grape => apegray

 # Natalie => atalieNay

 # "squeeze" => "eezesquay"


 # define a method accepts a word(string) as an argument
    #slice from the begining to the first vowel
 #and return a new string (pig latinified)!

#define a method pig_latin_name(word)
    def pig_latin_name(word)
#define a  list of vowels ( can be an array)
        vowels_list = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
#convert the word to a list of letters
        letters = word.split("")
#loop through the list of letters
        #puts letters
        letters.each do |letter| #[p, l, u, m]
            
    #if the letter is consonant
            if vowels_list.include?(letter) == false
               
     #cut the letter from the letters array 
                removed_consonant = letters.shift #[l , u ,m]
     # paste it to the end of letters array
                letters.push(removed_consonant)
                #puts "letter is #{letter}"
     #else if the letter is a vowel
     #
     #end the if 
            end
#end the loop
        end
#push "ay" to the letters
    letters.push("ay")
#array to string
    pig_latinified_word = letters.join
#return the string
    return pig_latinified_word
#end the method
end

    
puts pig_latin_name("plum")
 
