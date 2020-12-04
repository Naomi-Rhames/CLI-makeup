class CLI
    def start
        puts "Welcome User! Looking for some Maybelline Makeup Products?" 
        puts "Well Congratulations, your in luck! PLease type in what Maybelline Product you would like!"
        input = gets.chomp.downcase
    API.up_type(input)
    display_info
    more_options
    loop_or_exit
    end
    
    def display_info
        Makeup.all.each.with_index(1) do |p_t, index|
            puts "#{index}. #{p_t.product_type} - #{p_t.product_color}"
            puts "#{p_t.description}"
            puts "-------------------------------------------------------"
        end
    end
    
    def more_options
        puts "If you would like more information about a certian product please enter the number assciated with that product! Choose numbers 1 through 54."
        imput = gets.chomp.to_i
        index = imput - 1
        user_choice = Makeup.all[index]
        puts "#{index}: #{user_choice.product_type}
        #{user_choice.product_color}
        #{user_choice.price}
        #{user_choice.description}"
        pay_time
    end
    def pay_time
        puts "Since you got some information about the Makeup products, Which items would you liuke to purchase? Choose numbers 1 through 54."

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

    end
    def loop_or_exit
        puts "Would you like to look at other items to look at? Please enter y/n."
        imput = gets.chomp.downcase
        if imput == "y"
            start
        else
            exit
        end
    end
end 

