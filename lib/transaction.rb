class Transaction 
  attr_reader :date, :credit, :debit, :acc_balance

  def initialize(credit, debit, acc_balance)
    @date = Time.now.strftime("%d/%m/%Y")
    @credit = credit
    @debit = debit
    @acc_balance = acc_balance
  end
end

