class Pizza

  
        def initialize(new_toppings)
            @slices = 0
            @toppings = new_toppings
            @baked = false
        end

    def bake
        @baked = true
    end

    def cut 
        if @baked
        @slices += 2
        end
    end

    def eat
        if @slices >= 1 && @baked
        @slices -= 1 
        end
    end

end

#pizza1 = Pizza.new(['cheese', 'peppers'])

# pizza1.bake
# p pizza1

# 5.times do
# pizza1.cut
# end

# p pizza1

# 11.times do
#     pizza1.eat
# end
# puts pizza1.inspect

# print pizza1.inspect