class Statement
  def self.print_statement(account_transactions_history)
    header
    account_transactions_history.reverse_each do |transaction| 
    puts "#{transaction.date} || #{formatted_number(transaction.credit)} || #{formatted_number(transaction.debit)}|| #{formatted_number(transaction.acc_balance)}"
    end
  end
  
  class << self
  private
    def formatted_number(number)
      '%.2f' % number if number.is_a?(Numeric)
    end

    def header 
      puts 'date || credit || debit || balance'
    end
  end
end