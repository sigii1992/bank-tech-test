class BankAccount
  attr_reader :balance

  def initialize 
    @balance = 0.00
  end

  def deposit(amount)
    raise 'Please enter a valid positive number!' unless valid_number?(amount)
    raise 'You have added 0 money to your account, please enter another amount if needed.' if invalid_amount?(amount)
    
    @balance += amount 
  end

  def withdraw(amount)
    raise 'Please enter a valid positive number!' unless valid_number?(amount)
    raise 'Oops! Can not withdraw! There is not enough money in your account..' if @balance < amount
    raise 'Can not withdraw 0 money, please enter another amount.' if invalid_amount?(amount)
    raise 'You can only withdraw an amount which is multiple by 10.' unless amount % 10 == 0
   
    @balance -= amount
  end

  private 

  def invalid_amount?(amount)
    amount == 0
  end

  def valid_number?(amount)
    amount.is_a?(Numeric) 
  end
end