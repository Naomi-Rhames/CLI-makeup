class CLI
    def start
        puts ""
        puts "Mirror, Mirror, on the wall..." 
        sleep(2)
        puts ""
        puts "Who is the finest of them all?"
        sleep(2)
        puts ""
        puts "That would be you of course!"
        sleep(1)
        puts ""
        puts "Welcome to your Maybelline Products! "
        API.up_type
        display_info
        more_options
        pay_time
        loop_or_exit
    end
    
    
    def display_info
        puts ""
        puts "PLease press enter for the list of Products that you will be instrested in purchasing!"
        puts ""

        Makeup.all.each.with_index(1) do |p_t, index|
          sleep(0.5)
            puts "#{index}. #{p_t.name} "
        end
    end
    
    def more_options
    # This method allows the user to list more information about the product
        puts ""
        puts "If you would like more information about a certian product please enter the number assciated with that product! Choose numbers 1 through 54."
        puts ""
       imput = gets.chomp.to_i
       if imput.between?(1,54)
        index = imput - 1
        user_choice = Makeup.all[index]
        puts "#{index}: #{user_choice.product_type}
        Color : #{user_choice.product_color.join(",")}
        Price : #{user_choice.price}
        #{user_choice.description}"
       else
        invalid_choice
       end
    end
    def pay_time
        #Then took the instance method add_item from the class CashRegister
        puts ""
        puts "Since you got some information about the Makeup products, Which items would you liuke to purchase? Choose numbers 1 through 54."
        puts ""
        imput = gets.chomp.to_i
        index = imput - 1
        user_choice = Makeup.all[index]
        puts "#{index}: #{user_choice.product_type}
        #{user_choice.product_color}
        #{user_choice.price}
        #{user_choice.description}"
        item = user_choice.product_type
        price = user_choice.price
      puts CashRegister.new.add_item(item, price)
    loop_or_exit
    end
    def invalid_choice
        puts ""
        puts "I an sorry but that number is invalid!"
        puts ""
    end
    def loop_or_exit
        #This allows the user to keep shopping for another product looping from the begining of this appliation else it would end the proccess
        puts ""
        puts "Would you like to look at other items to look at? Please enter y/n."
        puts ""
        imput = gets.chomp.downcase
        if imput == "yes"
            start
        else
            puts ""
            puts "Thanks for being intrested in our Makeup Products!!"
            sleep(2)
            puts ""
            puts "Please come agian!"
            sleep(2)
            puts ""
            puts "Remmeber That your imperfections are what makes you beautiful!"
            puts ""

            exit
        end
    end
end 

