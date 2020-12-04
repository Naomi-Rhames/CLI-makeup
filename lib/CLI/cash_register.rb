class CashRegister
    attr_accessor :total, :price, :items,:product
    def initialize
    @total = 0
    @price = price
    @items= []
    @product = product
    end
    def add_item(item, price, quantity = 1)
        @price = price
        @total = price * quantity
        @last_transaction =  price * quantity
        if quantity > 1
          counter = 0
          while counter < quantity
            @items << item
            counter += 1
          end
        else
          @items << item
        end
        return "Thanks for shopping with us! Your total is #{total}"
    end

end