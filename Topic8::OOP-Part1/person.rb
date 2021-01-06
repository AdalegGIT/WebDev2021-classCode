class Person
   #first_name
   #last_name
   #email
   #awake
   #constructor -- special method -- hooks into .new
   def initialize(f_name, l_name, email, awake)
    #def initialize()
        @first_name = f_name
        @last_name = l_name
        @email = email
        @awake = awake
   end
   
   
   #instance methods
   def full_name
    return "#{@first_name} #{@last_name}"
   end
    #greetings
    def greetings
        if @awake 
        return "Hello !! :)"
        else
        return "Zzzz!!"  
        end
    end

    #sleep
    def sleep
        @awake = false
    end
    #awaken
    def awaken
        @awake = true
    end
   

end

me = Person.new("Harisree","S", "hs@hs.com", true) #defining an object
you = Person.new("Elvis","Peter","ep@ep.ca", false)

p me
p"------------------------"
me.sleep
p me.greetings
p me
p"------------------------"
me.awaken

p me

p me.greetings

p me.full_name