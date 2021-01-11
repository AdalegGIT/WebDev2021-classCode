require('./pizza')

class Pizzeria

    #class variable
    @@all_pizzeria = []
    @@total_sales = 0
    #self
    def initialize
        @is_open = false
        @stock = 0
        @pizza_sales = 0
        @@all_pizzeria << self
    end
     
    attr_accessor :pizza_sales

    #class method
    def self.total_sales
        return @@total_sales
    end

    def self.total_shops
        return @@all_pizzeria.length
    end

    def self.local_sales(store)
        return store.pizza_sales
    end

    #instance methods
    def total_sales
        return @@total_sales
    end

    def open 
        @is_open= true
    end

    def close
        @is_open =false
    end

    #get the toppings
    def order(toppings)
        #check if the store is open 
        #check if there is stock
        if @is_open && @stock > 0
        
        #pizza sales increases
        #incrementing the sales happening in all chains
        @@total_sales +=1
        @pizza_sales += 1
        #stock goes down
        @stock -= 1
        #return the pizza
        new_pizza = Pizza.new(toppings)
        #bake the new pizza
        new_pizza.bake
        # slice it
        4.times do
            new_pizza.cut
        end
        return new_pizza
        else 
            # either no stock or store is closed 
            # nothing is returned
            return nil
        end
    end

    def restock
        if @is_open == false
        @stock += 5
        end
    end
end

super_pizza = Pizzeria.new
awesome_pizza = Pizzeria.new

# p super_pizza

awesome_pizza.restock
super_pizza.restock

# p super_pizza

awesome_pizza.open
super_pizza.open

# p super_pizza

my_pizza = super_pizza.order(['cheese', 'mushrooms'])
super_pizza.order(['cheese', 'mushrooms'])
super_pizza.order(['cheese', 'mushrooms'])

# p my_pizza

p super_pizza

awesome_pizza.order(['cheese', 'mushrooms'])

p awesome_pizza

p Pizzeria.total_sales

p "how many shops ?"

p Pizzeria.total_shops

p awesome_pizza.total_sales

p super_pizza.total_sales

p Pizzeria.local_sales(super_pizza) #we are invoking a class method



