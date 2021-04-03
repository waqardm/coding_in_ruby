class Account
  attr_accessor :name, :balance
  def initialize (name, balance=100)
    @name = name
    @balance = balance
  end
  public
    def display_balance(pin_number)
      if pin = pin_number
        puts "Balance: $#{@balance}"
      else
        return @pin_error
      end
    end

    def withdraw(pin_number, amount)
      if pin = pin_number
        if amount > @balance
          puts "Sorry you do not have enough balance"
        else 
          @balance -= amount
          puts "Withdrew #{amount}. New balance: $#{@balance}."
        end
      else
          puts pin_error
      end
    end

    def deposit(pin_number, deposit_amount)
      if pin = pin_number
        @balance += deposit_amount
        puts "Deposit of #{deposit_amount} has been added. New balance: $#{@balance}."
      else
        return pin_error
      end
    end

  private
    def pin 
      @pin = 1234
    end
    def pin_error
      return "Access denied: incorrect PIN."
    end
end

checking_account = Account.new("Waqar", 1_000_000)
checking_account.withdraw(1234, 2_000_000)