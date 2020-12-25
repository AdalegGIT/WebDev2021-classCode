def vowels
    return ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
  end


def is_consonants?(specific_letter)
    #vowels_list = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    #vowels.each do |vowel|
        if vowels.include?(specific_letter)
            return false
        else
            return true
        end
    #end
end
 
 # define a method accepts a word(string) as an argument
    #slice from the begining to the first vowel
 #and return a new string (pig latinified)!

#define a method pig_latin_name(word)
def pig_latin_name(word)
    
    letters = word.split("")
    
    final_array = letters.clone
    letters.each do |letter| #[p, l, u, m]
                
       
        if is_consonants?(letter)
            final_array.rotate! 
            # #puts ".........#{removed_consonant}"
            # #letters.push(removed_consonant)
            # puts ".........#{final_array}..#{letters}"
        else 
            # puts "*****#{final_array}.... #{letters}"
            final_array.push("ay")
            return final_array.join
        end
    end
end

    puts pig_latin_name("apple")
    puts pig_latin_name("plum")
    puts pig_latin_name("grape")