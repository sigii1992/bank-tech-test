class BankAccount
  attr_reader :balance

  def initialize 
    @balance = 0.00
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise 'Oops! Can not withdraw! There is not enough money in your account..' if @balance < amount
    raise 'Can not withdraw £0, please enter another amount.' if amount == 0
    raise 'You can only withdraw an amount which is multiple by 10.' unless amount % 10 == 0

    @balance -= amount
  end
end